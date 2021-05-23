package com.zxl.ysyt.controller;

import com.alibaba.fastjson.JSON;
import com.zxl.ysyt.pojo.Book;
import com.zxl.ysyt.service.BookService;
import com.zxl.ysyt.util.TxtToString;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * @author 汉卿
 * @date 2021/4/12 15:21
 */
@RestController
@RequestMapping("/book")
public class BookController {    //负责对图书的增删改查

    @Autowired
    BookService bookService;

    @Resource
    private HttpServletResponse httpServletResponse;


    @PostMapping("/addbook")
    public String addBook(@RequestBody Book book) {
        Book book1 = new Book();
        book1.setBname(book.getBname());
        book1.setAuthor(book.getAuthor());
        bookService.save(book1);

        return "成功添加图书";

    }

    @PostMapping("/findAll")
    public String findAll() {         //所有图书，提供给前端首页数据渲染
        List<Book> list = bookService.list();
        return JSON.toJSONString(list);
    }

    @PostMapping("/finOne")
    public String finOne(@RequestBody Book book) {     //查找出其中一本图书，提供给某本书的详情页，动态渲染
        Book book1 = bookService.getById(book.getId());

        return JSON.toJSONString(book1);
    }
    
    @GetMapping("/getBookContent")
    public String getBookContent(Integer id) {    //获取某本图书的内容
        Book book = bookService.getById(id);
        /* System.out.println(book.getUrl());*/

        httpServletResponse.setCharacterEncoding("utf-8");
        String s = TxtToString.openFile(book.getUrl());


        return JSON.toJSONString(s);
    }


}
