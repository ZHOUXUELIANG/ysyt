package com.zxl.ysyt.controller;

import com.alibaba.fastjson.JSON;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.zxl.ysyt.pojo.BookCase;
import com.zxl.ysyt.pojo.User;
import com.zxl.ysyt.service.BookCaseService;
import com.zxl.ysyt.util.TxtToString;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;


import java.util.List;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

/**
 * @author 汉卿
 * @date 2021/4/17 20:26
 */
@RestController
@RequestMapping("/bookcase")
public class BookcaseController {


    @Autowired
    BookCaseService bookCaseService;

    @Resource
    private HttpServletResponse httpServletResponse;

    @PostMapping("/findAll")
    public String findAll(@RequestBody User user){

        List<BookCase> bcaselist = bookCaseService.list(new QueryWrapper<BookCase>()
                .eq("uid", user.getUid())
        );


        return JSON.toJSONString(bcaselist);

    }

    @PostMapping("/addBookcase")
    public String addBookcase(@RequestBody BookCase bookCase){
        boolean b = bookCaseService.save(bookCase);

        return JSON.toJSONString(b);
    }

    @PostMapping("/findOne")
    public String findOne(@RequestBody BookCase bookCase){   //通过id 来查询一本书

        BookCase aCase = bookCaseService.getById(bookCase.getId());


        return JSON.toJSONString(aCase);
    }

    @GetMapping("/getBookContent")
    public String getBookContent(Integer id) {    //获取书架上某本书的内容


        BookCase byId = bookCaseService.getById(id);

        httpServletResponse.setCharacterEncoding("utf-8");
        String s = TxtToString.openFile(byId.getContent());


        return JSON.toJSONString(s);
    }





}
