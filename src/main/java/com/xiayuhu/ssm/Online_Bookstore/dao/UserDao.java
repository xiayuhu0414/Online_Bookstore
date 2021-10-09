package com.xiayuhu.ssm.Online_Bookstore.dao;

import com.xiayuhu.ssm.Online_Bookstore.entity.User;
import org.apache.ibatis.annotations.Param;


import java.util.List;

public interface UserDao {
    /**
    * @description:  用户列表
    * @param:  
    * @return: java.util.List<com.xiayuhu.ssm.Online_Bookstore.entity.User>
    * @author xyh
    * @date: 2021/10/8 8:04
    */ 
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
    int updata(User user);

    /**
     * 添加
     *
     * @param user 用户
     * @return 影响行数
     */
    int insert(User user);



}
