package com.zxl.ysyt.pojo;

import com.baomidou.mybatisplus.annotation.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

/**
 * @author 汉卿
 * @date 2021/4/8 16:54
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Book {

    @TableId(type = IdType.AUTO)
    private String id;         //图书唯一标识
    private String bname;      //书名
    private String author;     //作者
    private String url;        //图书所在文件服务器地址
    private String outline;     //图书详情页的简介大纲
    private String cover;      //图书封面图片
    private String keyword;    //图书关键字，使用简短文字(四五个文字）简要描述图书


    // 字段添加填充内容   在代码级别对这两个属性进行处理
    @TableField(fill = FieldFill.INSERT)
    private Date createTime;

    @TableLogic   //逻辑删除
    /**
     * 并没有从数据库中被移除，而是通过一个变量来让它失效！  deleted = 0 => deleted = 1
     */
    private Integer deleted;


    @TableField(fill = FieldFill.INSERT_UPDATE)
    private Date updateTime;
}
