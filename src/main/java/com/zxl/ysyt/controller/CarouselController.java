package com.zxl.ysyt.controller;

import com.alibaba.fastjson.JSON;
import com.google.common.annotations.VisibleForTesting;
import com.zxl.ysyt.pojo.Book;
import com.zxl.ysyt.pojo.Carousel;
import com.zxl.ysyt.service.CarouselService;
import com.zxl.ysyt.util.TxtToString;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * @author 汉卿
 * @date 2021/4/18 21:59
 */
@RestController
@RequestMapping("/carousel")
public class CarouselController {

    @Autowired
    CarouselService carouselService;


    @Resource
    HttpServletResponse httpServletResponse;

    @PostMapping("/findAllC")
    public String findAll() {
        List<Carousel> list = carouselService.list();

        return JSON.toJSONString(list);
    }

    @PostMapping("/findOne")
    public String findOne(@RequestBody Carousel carousel) {
        Carousel carousel1 = carouselService.getById(carousel.getId());

        return JSON.toJSONString(carousel1);
    }

    @GetMapping("/getCarouselContent")
    public String getCarouselContent(Integer id) {

        Carousel carousel = carouselService.getById(id);

        httpServletResponse.setCharacterEncoding("utf-8");

        String s = TxtToString.openFile(carousel.getUrl());

        return JSON.toJSONString(s);
    }

}
