package com.xiayuhu.ssm.Online_Bookstore.service.impl;

import com.xiayuhu.ssm.Online_Bookstore.dao.UserDao;
import com.xiayuhu.ssm.Online_Bookstore.entity.User;
import com.xiayuhu.ssm.Online_Bookstore.service.UserService;
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

    @Override
    public User getUserById(Integer id) {
        return  userDao.getUserById(id);
    }
}
