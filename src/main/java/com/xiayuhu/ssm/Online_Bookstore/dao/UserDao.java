package com.xiayuhu.ssm.Online_Bookstore.dao;

import com.xiayuhu.ssm.Online_Bookstore.entity.User;
import org.apache.ibatis.annotations.Param;


import java.util.List;

public interface UserDao {

 public List<User> find();

 public User getUserById(@Param("id")  Integer id);

}
