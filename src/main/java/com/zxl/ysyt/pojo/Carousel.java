package com.zxl.ysyt.pojo;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @author 汉卿
 * @date 2021/4/18 21:56
 *
 * 封面轮播图实体
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Carousel {

    @TableId(type = IdType.AUTO)
    private Long id;

    private String bname;      //书名
    private String author;     //作者
    private String url;        //图书所在文件服务器地址
    private String outline;     //图书详情页的简介大纲
    private String cover;      //图书封面图片


}
