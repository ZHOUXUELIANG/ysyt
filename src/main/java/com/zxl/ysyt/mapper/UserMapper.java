package com.zxl.ysyt.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.zxl.ysyt.pojo.User;
import org.springframework.stereotype.Repository;

/**
 * @author 汉卿
 * @date 2021/4/8 16:01
 */
@Repository
public interface UserMapper extends BaseMapper<User> {

    //至此所有的增删改查都写完了
}
