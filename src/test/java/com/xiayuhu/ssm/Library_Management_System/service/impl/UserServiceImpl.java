package com.xiayuhu.ssm.Library_Management_System.service.impl;

import com.xiayuhu.ssm.Library_Management_System.entity.User;
import com.xiayuhu.ssm.Library_Management_System.mapper.UserMapper;
import com.xiayuhu.ssm.Library_Management_System.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;

    @Override
    public List<User> listUser() {
        List<User> userList = userMapper.selectUser();
        for (int i = 0; i < userList.size(); i++) {
            System.out.println(userList);
        }
        return userList;
    }
}
