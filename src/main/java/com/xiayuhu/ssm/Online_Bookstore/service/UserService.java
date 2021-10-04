package com.xiayuhu.ssm.Online_Bookstore.service;

import com.xiayuhu.ssm.Online_Bookstore.entity.User;

import java.util.List;

public interface UserService {
    List<User> find();

    User getUserById(Integer id);
}
