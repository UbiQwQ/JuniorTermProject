package com.innovation.controller;

import com.innovation.util.JsonUtilImpl;
import com.innovation.util.NetUtilImpl;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.io.IOException;
import java.util.List;

/**
 * @Auther: Innovation
 * @Date: 2018/6/6 22:37
 * @Vison: 1.0
 * @Description:
 */
@Controller
public class CityController {

    NetUtilImpl netUtilImpl = new NetUtilImpl();
    JsonUtilImpl jsonUtilImpl = new JsonUtilImpl();

    //添加一个日志器
    private static final Logger logger = LoggerFactory.getLogger(CityController.class);


    @RequestMapping("/city-qingDao")
    public ModelAndView qingDao() throws IOException {
        ModelAndView modelAndView = new ModelAndView();
        //获取青岛天气
        String city = "青岛";
        String url = "https://api.seniverse.com/v3/weather/now.json?key=mtpmwyecaphmrzwc&location=qingdao&language=zh-Hans&unit=c";
        String data = netUtilImpl.getJson(url);
        logger.info(data+"获取成功");
        List<String> weatherList = jsonUtilImpl.getData(data);
//        System.out.println(weatherList);

        // 设置传到cityPage的信息和视图名称
        modelAndView.setViewName("/city");
        modelAndView.addObject("cityName","青岛");
        modelAndView.addObject("weather",weatherList);

        //输出日志文件
        logger.info("the city jsp pages");
        //返回视图
        return modelAndView;
    }

    @RequestMapping("/city-jiNan")
    public ModelAndView jiNan() throws IOException {
        ModelAndView modelAndView = new ModelAndView();
        //获取青岛天气
        String city = "济南";
        String url = "https://api.seniverse.com/v3/weather/now.json?key=mtpmwyecaphmrzwc&location=jinan&language=zh-Hans&unit=c";
        String data = netUtilImpl.getJson(url);
        logger.info(data+"获取成功");
        List<String> weatherList = jsonUtilImpl.getData(data);
//        System.out.println(weatherList);

        // 设置传到cityPage的信息和视图名称
        modelAndView.setViewName("/city");
        modelAndView.addObject("cityName","济南");
        modelAndView.addObject("weather",weatherList);

        //输出日志文件
        logger.info("the city jsp pages");
        //返回视图
        return modelAndView;
    }


    @RequestMapping("/search")
    public ModelAndView search(String city) throws IOException {
        ModelAndView modelAndView = new ModelAndView();
        String url = "https://api.seniverse.com/v3/weather/now.json?key=mtpmwyecaphmrzwc&location="+city+"&language=zh-Hans&unit=c";
        String data = netUtilImpl.getJson(url);
        logger.info(data+"获取成功");
        List<String> weatherList = jsonUtilImpl.getData(data);
//        System.out.println(weatherList);

        // 设置传到cityPage的信息和视图名称
        modelAndView.setViewName("/city");
        modelAndView.addObject("cityName",city);
        modelAndView.addObject("weather",weatherList);

        //输出日志文件
        logger.info("the city jsp pages");
        //返回视图
        return modelAndView;
    }
}
