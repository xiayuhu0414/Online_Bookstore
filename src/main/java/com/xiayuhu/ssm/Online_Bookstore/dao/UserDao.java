package com.xiayuhu.ssm.Online_Bookstore.dao;

import com.xiayuhu.ssm.Online_Bookstore.entity.User;
import org.apache.ibatis.annotations.Param;


import java.util.List;

public interface UserDao {

    List<User> listUser();

    int deleteById(Integer userId);
    /**
     * 根据ID查询
     *
     * @param id 用户ID
     * @return 用户
     */
    User getUserById(@Param("id") Integer id);

    /**
     * 更新
     *
     * @param user 用户
     * @return 影响行数
     */
    void update(User user);

    /**
     * 添加
     *
     * @param user 用户
     * @return 影响行数
     */
    void insert(User user);
}
