package com.innovation.controller;

import javax.servlet.http.HttpSession;

import com.innovation.dao.impl.UserDao;
import com.innovation.entity.User;
import com.innovation.service.impl.UserLoginService;
import com.innovation.service.impl.UserRegService;
import com.innovation.service.impl.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.Date;

/**
 * @Auther: Innovation
 * @Date: 2018/5/20 10:32
 * @Vison: 1.0
 * @Description:
 */
@Controller
public class UserController {

    @Autowired
    private UserLoginService userLoginService;
    @Autowired
    private UserRegService userRegService;
    @Autowired
    private UserService userSettingService;

    @Autowired
    private UserDao userDao;

    private static Boolean isCaptcha;
    public static Boolean getIsCaptcha() {
        return isCaptcha;
    }

    public static void setIsCaptcha(Boolean isCaptcha) {
        UserController.isCaptcha = isCaptcha;
    }


    /**
     * 功能描述: 用户注册
     *
     * @param: model
     * @return: 
     * @auther: Innovation
     * @date: 2018/5/23 17:42
     */
    @RequestMapping("/signin")
    public ModelAndView signin(String userName, String password, String email, String captcha, HttpSession httpSession)
            throws Exception {
        ModelAndView modelAndView = new ModelAndView();
        // 如果验证码不正确
        if (!isCaptcha) {
            modelAndView.addObject("info",
                    "<span class='help-inline' style='color: #ff0000'>验证码不正确！</span>");
            modelAndView.setViewName("reg");
            return modelAndView;
        }

        // 创建新的用户
        User user = new User();
        user.setUserName(userName);
        user.setEmail(email);
        user.setPassword(password);
        user.setRegTime(new Date());
        user.setStatus((short) 1);

        // UserReg注册用户
        userRegService.reg(user);

        // 设置传到前台的信息和视图名称

        // 设置session
        modelAndView.setViewName("redirect:index.jsp");

        httpSession.setAttribute("status",user.getStatus());
        httpSession.setAttribute("userName",userName);
        httpSession.setAttribute("email",email);
        httpSession.setAttribute("phone",user.getPhone());
        httpSession.setAttribute("regTime",user.getRegTime());

        return modelAndView;
    }

}
