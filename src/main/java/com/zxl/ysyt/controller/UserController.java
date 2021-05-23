package com.zxl.ysyt.controller;

import com.alibaba.fastjson.JSON;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.zxl.ysyt.pojo.User;
import com.zxl.ysyt.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;


/**
 * @author 汉卿
 * @date 2021/4/8 18:10
 */
@RestController
@RequestMapping("/user")       //用户个人修改操作接口
public class UserController {


    @Autowired
    private UserService userService;

    @PostMapping("/updateMyInfo")     //修改个人信息页的接口
    public String updateMyInfo(@RequestBody User user) {

        boolean b = userService.updateById(user);



        return JSON.toJSONString(b);
    }

    @PostMapping("/updatesecret")
    public String updateSecret(@RequestBody User user) {   //由个人页进行的密码修改（也就是登录成功状态下的密码修改

        boolean b = userService.lambdaUpdate().eq(User::getUid, user.getUid()).set(User::getPassword, user.getPassword()).update();


        return JSON.toJSONString(b);
    }



    @PostMapping("/confirm1")
    public String confirmSecret1(@RequestBody User user) {    //单独验证用户是否存在

        User one = userService.getOne(Wrappers.<User>lambdaQuery().eq(User::getUid, user.getUid()), false);

        return JSON.toJSONString(one);

    }

    @PostMapping("/confirm2")
    public String confirmSecret2(@RequestBody User user) {     //验证用户名和密码是否匹配
        User one = userService.getOne(new QueryWrapper<User>()
                .eq("uid", user.getUid())
                .eq("password", user.getPassword())
        );

        if(one.getUid() != null) {
            return "ok";
        }


        String s = JSON.toJSONString(one);
        return s;

    }


    @PostMapping("/test")
    public String test(@RequestBody User user) {   //用于查看一些前端请求数据的测试接口
        String s = JSON.toJSONString(user);

        return s;
    }


}
