package com.zxl.ysyt.controller;

import com.zxl.ysyt.pojo.Comment;
import com.zxl.ysyt.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author 汉卿
 * @date 2021/4/17 20:02
 */
@RestController
@RequestMapping("/comm")
public class CommentController {

    @Autowired
    CommentService commentService;


    @PostMapping
    public String addComm(@RequestBody Comment comment){


        return null;

    }


}
