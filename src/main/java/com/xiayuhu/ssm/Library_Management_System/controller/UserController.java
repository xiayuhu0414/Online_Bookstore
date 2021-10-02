package com.xiayuhu.ssm.Library_Management_System.controller;

import com.xiayuhu.ssm.Library_Management_System.entity.User;
import com.xiayuhu.ssm.Library_Management_System.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class UserController {
    @Autowired
    private UserService userService;

    /**
     * 查找所有学生
     * @return
     */
    @RequestMapping(value="/selectUser")
    public ModelAndView test(){
        List<User> list = userService.listUser();
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("WEB-INF/view/Home/index");
        modelAndView.addObject("list", list);
        return modelAndView;
    }
}
