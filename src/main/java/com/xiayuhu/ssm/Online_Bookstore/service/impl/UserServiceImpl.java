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
    /**
    * @description: 用户列表
    * @param:
    * @return: java.util.List<com.xiayuhu.ssm.Online_Bookstore.entity.User>
    * @author xyh
    * @date: 2021/10/9 8:50
    */
    public List<User> listUser() {
        List<User> userList = userDao.listUser();
        // 使用查询到的用户列表，可以完成一些预加载
        return userList;
    }

    @Override
    public User getUserById(Integer id) {
        return  userDao.getUserById(id);
    }

    @Override
    public void updateUser(User user) {
          userDao.updata(user);
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
