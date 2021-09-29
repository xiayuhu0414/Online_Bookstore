package com.xiayuhu.ssm.Library_Management_System;

import com.xiayuhu.ssm.Library_Management_System.entity.User;
import com.xiayuhu.ssm.Library_Management_System.mapper.UserMapper;

import com.xiayuhu.ssm.Library_Management_System.service.UserService;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

public class aaTest {


    @Test
    public void select( ) {
        ApplicationContext context = new ClassPathXmlApplicationContext("spring/spring-mybatis.xml");
        UserMapper userMapper =  context.getBean(UserMapper.class);

        List<User> user = userMapper.selectUser();
        System.out.println(user);

    }

}
