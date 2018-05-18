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
@RequestMapping("/home")
public class BaseController {
    //添加一个日志器
    private static final Logger logger = LoggerFactory.getLogger(BaseController.class);

    //映射一个action
    @RequestMapping("/index")
    public  String index(){
        //输出日志文件
        logger.info("the first jsp pages");
        //返回一个index.jsp这个视图
        return "index";
    }
}
