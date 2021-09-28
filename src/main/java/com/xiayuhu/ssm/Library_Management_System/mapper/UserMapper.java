package com.xiayuhu.ssm.Library_Management_System.mapper;

import com.xiayuhu.ssm.Library_Management_System.entity.User;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;


public interface UserMapper {
    public List<User> selectUser();

}
