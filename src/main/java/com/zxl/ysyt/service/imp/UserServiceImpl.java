package com.zxl.ysyt.service.imp;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.zxl.ysyt.mapper.UserMapper;
import com.zxl.ysyt.pojo.User;
import com.zxl.ysyt.service.UserService;
import org.springframework.stereotype.Service;

/**
 * @author 汉卿
 * @date 2021/4/8 18:58
 */
@Service
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements UserService {
}
