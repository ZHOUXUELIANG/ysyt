package com.zxl.ysyt;

import com.zxl.ysyt.mapper.UserMapper;
import com.zxl.ysyt.pojo.User;
import com.zxl.ysyt.util.TxtToString;
import io.minio.MinioClient;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.net.URL;
import java.util.List;

@SpringBootTest
class YsytApplicationTests {

    @Autowired
    private UserMapper userMapper;

    @Test
    void contextLoads() {

        List<User> users = userMapper.selectList(null);
        users.forEach(System.out::println);
    }

    @Test
    public void testInsert(){
        User user = new User();
        user.setUsername("吴飞");
        user.setPassword("123456");
        user.setSex("男");


        int result = userMapper.insert(user); // 帮我们自动生成id
        System.out.println(result); // 受影响的行数
        System.out.println(user); // 发现，id会自动回填
    }

    @Test
    public void testDeleteById() {
        userMapper.deleteById(1L);
    }

    @Test
    public void testSelectById() {
        User user = userMapper.selectById(3L);
        System.out.println(user);
    }





}
