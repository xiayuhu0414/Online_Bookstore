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
    public List<User> listUser() {
        return null;
    }

    @Override
    public User getUserById(Integer id) {
        return  userDao.getUserById(id);
    }

    @Override
    public void updateUser(User user) {
          //userDao.updata(user);
    }

    @Override
    public void deleteUser(Integer id) {

    }

    @Override
    public User insertUser(User user) {
        userDao.insert(user);

        return user;
    }
}
