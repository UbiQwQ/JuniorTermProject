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
    @RequestMapping("/loginpage")
    public String login(){
        //输出日志
        logger.info("the login.jsp page");
        //返回login.jsp视图
        return "login";
    }

    @RequestMapping("/loginManager")
    public String loginManager(){
        //输出日志
        logger.info("the login.jsp page");
        //返回login.jsp视图
        return "login_manager";
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

    /**
     * 功能描述: 跳转到目的地页面
     *
     * @return: Stirng "destination"
     * @auther: Innovation
     * @date: 2018/6/6 22:04
     */
    @RequestMapping("/destination")
    public String destination(){
        //输出日志
        logger.info("the destination.jsp page");
        //返回login.jsp视图
        return "destination";
    }

    /**
     * 功能描述:跳转到酒店页面
     *
     * @param:
     * @return:
     * @auther: Innovation
     * @date: 2018/6/6 22:18
     */
    @RequestMapping("/hotel")
    public String hotel(){
        //输出日志
        logger.info("the hotel.jsp page");
        //返回login.jsp视图
        return "hotel";
    }

    /**
     * 功能描述: 跳转到美食页面
     *
     * @param:
     * @return:
     * @auther: Innovation
     * @date: 2018/6/6 22:18
     */
    @RequestMapping("/food")
    public String food(){
        //输出日志
        logger.info("the food.jsp page");
        //返回login.jsp视图
        return "food";
    }

    /**
     * 功能描述: 跳转到游记页面
     *
     * @param:
     * @return:
     * @auther: Innovation
     * @date: 2018/6/6 22:18
     */
    @RequestMapping("/travels")
    public String travels(){
        //输出日志
        logger.info("the travels.jsp page");
        //返回login.jsp视图
        return "travels";
    }

    /**
     * 功能描述: 跳转到城市信息页面
     * @param:
     * @return:
     * @auther: Innovation
     * @date: 2018/6/7 11:45
     */
    @RequestMapping("/city")
    public String city(){
        //输出日志
        logger.info("the city.jsp page");
        //返回city.jsp视图
        return "city";
    }

    /**
     * 功能描述: 跳转到个人信息页面
     * @param:
     * @return:
     * @auther: Innovation
     * @date: 2018/6/11 22:41
     */
    @RequestMapping("/personal")
    public String personal(){
        //输出日志
        logger.info("the personal.jsp page");
        //返回personal.jsp视图
        return "personal";
    }
    /**
     * 功能描述:跳转到管理员登录页面
     * @param:
     * @return:
     * @auther: Innovation
     * @date: 2018/6/13 9:39
     */
    @RequestMapping("/managerloginpage")
    public String managerLogin(){
        //输出日志
        logger.info("the managerlogin.jsp page");
        //返回managerlogin.jsp视图
        return "login_manager";
    }
    
}
