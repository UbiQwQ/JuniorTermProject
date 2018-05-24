package com.innovation.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author Innovation
 * @create 2018-05-18-11:01
 */
// 注解标注此类为springmvc的controller，url映射为"/home"
@Controller
public class HomeController {
    //添加一个日志器
    private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

    //映射一个action
    @RequestMapping("/index")
    public String index(){
        //输出日志文件
        logger.info("the first jsp pages");
        //返回一个index.jsp这个视图
        return "index";
    }

    /**
     * 功能描述: 跳转到登录页面
     *
     * @auther: Innovation
     * @date: 2018/5/24 22:30
     */
    @RequestMapping("/login")
    public String login(){
        //输出日志
        logger.info("the login.jsp page");
        //返回login.jsp视图
        return "login";
    }

    /**
     * 功能描述: 跳转到注册页面
     *
     * @auther: Innovation
     * @date: 2018/5/24 22:30
     */
    @RequestMapping("/reg")
    public String reg(){
        //输出日志
        logger.info("the reg.jsp page");
        //返回login.jsp视图
        return "reg";
    }
    
}
