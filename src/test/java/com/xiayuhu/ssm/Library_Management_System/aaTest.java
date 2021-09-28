package com.xiayuhu.ssm.Library_Management_System;

import com.xiayuhu.ssm.Library_Management_System.entity.User;
import com.xiayuhu.ssm.Library_Management_System.mapper.UserMapper;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class aaTest {
    @Test
    public static void main(String[] args) {
        ApplicationContext context = new ClassPathXmlApplicationContext("spring-mybatis.xml");
        UserMapper userMapper = (UserMapper) context.getBean("userMapper");
        User user = (User) userMapper.selectUser();
        System.out.println(user);

    }

}
