package com.zxl.ysyt.pojo;

import com.baomidou.mybatisplus.annotation.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

/**
 * @author 汉卿
 * @date 2021/4/8 15:55
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class User {

    @TableId(type = IdType.INPUT)
    private String uid;     //用户唯一身份id

    private String username;
    private String password;
    private String sex;
    private String birth;
    private String avatar;



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
