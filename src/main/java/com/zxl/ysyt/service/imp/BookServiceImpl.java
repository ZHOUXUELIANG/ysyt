package com.zxl.ysyt.service.imp;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.zxl.ysyt.mapper.BookMapper;
import com.zxl.ysyt.pojo.Book;
import com.zxl.ysyt.service.BookService;
import org.springframework.stereotype.Service;

/**
 * @author 汉卿
 * @date 2021/4/8 19:06
 */
@Service
public class BookServiceImpl extends ServiceImpl<BookMapper, Book> implements BookService {

}
