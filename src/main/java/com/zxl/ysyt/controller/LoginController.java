package com.zxl.ysyt.controller;

import com.alibaba.fastjson.JSON;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.zxl.ysyt.pojo.User;
import com.zxl.ysyt.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @author 汉卿
 * @date 2021/4/10 13:33
 */

/**
 * 因为登录、注册、找回密码还是很重要的，所以就把这几个单独提取出来处理
 */

@RestController
public class LoginController {
    @Autowired
    private UserService userService;

    @PostMapping("/login")
    public String login(@RequestBody User user) {

        List<User> users = userService.list(new QueryWrapper<User>()
                .eq("uid",user.getUid())
                .eq("password",user.getPassword())
        );

        String res_json = JSON.toJSONString(users);

        System.out.println(res_json);
        return  res_json;
    }

    @PostMapping("/register")
    public String register(@RequestBody User user) {

        String flag = "";

        User user1 = new User();


        //注册之前先进行查询，该用户是否存在
        List<User> users = userService.list(new QueryWrapper<User>()
                .eq("uid",user.getUid())
        );

        //如果数据库中没有该用户，则可以进行注册
        if (users.size() == 0) {
            user1.setUid(user.getUid());
            user1.setPassword(user.getPassword());

            userService.save(user1);
            flag = "ok";
        } else {
             flag = "error：already exist user";
            System.out.println(flag);
            return flag;

        }


        String regis_json = JSON.toJSONString(user1);

        System.out.println(regis_json);

        return flag;
    }


    @PostMapping("/forget")
    public String forget(@RequestBody User user) {  //未登录时   修改密码


        boolean update = userService.lambdaUpdate()
                .eq(User::getUid,user.getUid())
                .set(User::getPassword,user.getPassword())
                .update();

        return "forget";

    }



}
