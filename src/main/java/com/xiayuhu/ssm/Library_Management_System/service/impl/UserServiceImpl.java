package com.xiayuhu.ssm.Library_Management_System.service.impl;

import com.xiayuhu.ssm.Library_Management_System.dao.UserDao;
import com.xiayuhu.ssm.Library_Management_System.entity.User;
import com.xiayuhu.ssm.Library_Management_System.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    @Override
    public List<User> find() {
        return userDao.find();
    }
}
