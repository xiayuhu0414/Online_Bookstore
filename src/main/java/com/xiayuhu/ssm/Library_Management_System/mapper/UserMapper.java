package com.xiayuhu.ssm.Library_Management_System.mapper;

import com.xiayuhu.ssm.Library_Management_System.entity.User;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * 添加了@Mapper注解之后这个接口在编译时会生成相应的实现类
 *使用@mapper后，不需要在spring配置中设置扫描地址，通过mapper.xml里面的namespace属性对应相关的mapper类，
 * spring将动态的生成Bean后注入到ServiceImpl中。
 * 需要注意的是：这个接口中不可以定义同名的方法，因为会生成相同的id
 * 也就是说这个接口是不支持重载的
 */
@Mapper
public interface UserMapper {
  List<User> selectUser();

}
