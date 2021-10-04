package com.xiayuhu.ssm.Library_Management_System.controller;

import com.xiayuhu.ssm.Library_Management_System.entity.User;
import com.xiayuhu.ssm.Library_Management_System.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
        List<User> list = userService.find();
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("WEB-INF/view/Home/index");
        modelAndView.addObject("list", list);
        return modelAndView;
    }
    /**
     * 登录页面显示
     *
     * @return
     */
    @RequestMapping("/login")
    public String loginPage() {
        return "Admin/login";
    }


    /**
     * 登录页面显示
     *
     * @return
     */
    @RequestMapping("/register")
    public String registerPage() {
        return "Admin/register";
    }

    /**
     * 登录验证
     *
     * @param request
     * @param response
     * @return
     */
    @RequestMapping(value = "/loginVerify", method = RequestMethod.POST, produces = {"text/plain;charset=UTF-8"})
    @ResponseBody
    public String loginVerify(HttpServletRequest request, HttpServletResponse response) {
        Map<String, Object> map = new HashMap<String, Object>();

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String rememberme = request.getParameter("rememberme");
        User user = userService.getUserByNameOrEmail(username);
        if (user == null) {
            map.put("code", 0);
            map.put("msg", "用户名无效！");
        } else if (!user.getUserPass().equals(password)) {
            map.put("code", 0);
            map.put("msg", "密码错误！");
        } else if (user.getUserStatus() == 0) {
            map.put("code", 0);
            map.put("msg", "账号已禁用！");
        } else {
            //登录成功
            map.put("code", 1);
            map.put("msg", "");
            //添加session
            request.getSession().setAttribute("user", user);
            //添加cookie
            if (rememberme != null) {
                //创建两个Cookie对象
                Cookie nameCookie = new Cookie("username", username);
                //设置Cookie的有效期为3天
                nameCookie.setMaxAge(60 * 60 * 24 * 3);
                Cookie pwdCookie = new Cookie("password", password);
                pwdCookie.setMaxAge(60 * 60 * 24 * 3);
                response.addCookie(nameCookie);
                response.addCookie(pwdCookie);
            }
            user.setUserLastLoginTime(new Date());
            user.setUserLastLoginIp(getIpAddr(request));
            userService.updateUser(user);

        }
        String result = new JSONObject(map).toString();
        return result;
    }

    /**
     * 登录验证
     *
     * @param request
     * @return
     */
    @RequestMapping(value = "/registerSubmit", method = RequestMethod.POST)
    @ResponseBody
    public JsonResult registerSubmit(HttpServletRequest request) {
        String username = request.getParameter("username");
        String nickname = request.getParameter("nickname");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        User checkUserName = userService.getUserByName(username);
        if (checkUserName != null) {
            return new JsonResult().fail("用户名已存在");
        }
        User checkEmail = userService.getUserByEmail(username);
        if (checkEmail != null) {
            return new JsonResult().fail("电子邮箱已存在");
        }

        // 添加用户
        User user = new User();
        user.setUserAvatar("/img/avatar/avatar.png");
        user.setUserName(username);
        user.setUserNickname(nickname);
        user.setUserPass(password);
        user.setUserEmail(email);
        user.setUserStatus(1);
        user.setArticleCount(0);
        user.setUserRole(UserRole.USER.getValue());
        try {
            userService.insertUser(user);
        } catch (Exception e) {
            e.printStackTrace();
            return new JsonResult().fail("系统异常");
        }
        return new JsonResult().ok("注册成功");
    }

    /**
     * 退出登录
     *
     * @param session
     * @return
     */
    @RequestMapping(value = "/admin/logout")
    public String logout(HttpSession session) {
        session.removeAttribute("user");
        //session.invalidate()是将session设置为失效
        session.invalidate();
        return "redirect:/login";
    }


}
