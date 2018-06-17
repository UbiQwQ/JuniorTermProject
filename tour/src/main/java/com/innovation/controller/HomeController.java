package com.innovation.controller;

import com.innovation.entity.Hotel;
import com.innovation.entity.Travels;
import com.innovation.entity.User;
import com.innovation.service.impl.AdminService;
import com.innovation.service.impl.HotelService;
import com.innovation.service.impl.TravelsService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @author Innovation
 * @create 2018-05-18-11:01
 */
// 注解标注此类为springmvc的controller，url映射为"/home"
@Controller
public class HomeController {

    @Autowired
    TravelsService travelsService;

    @Autowired
    HotelService hotelService;

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
    public String hotel(Model model){
        //输出日志
        logger.info("the hotel.jsp page");
        List<Hotel> hotels = hotelService.findAllHotel();
        model.addAttribute("hotels", hotels);
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
    public String travels(int page,Model model){
        //数据库中总数量
        int allRows;
        //总共有多少页
        int allPage;
        //第一条记录的索引
        int offset;
        //每页的记录数量
        int pageSize = 4;
        allRows = travelsService.queryTravelsRows();
        if (page==1) {
            offset = 0;
        } else {
            offset = (page - 1) * pageSize;
        }
        //计算总页数
        if (allRows % pageSize == 0) {
            allPage = allRows / pageSize;
        } else {
            allPage = allRows / pageSize + 1;
        }
        List<Travels> travelslist = travelsService.findAllTravels(offset, pageSize);
        model.addAttribute("travels", travelslist);
        model.addAttribute("allPage",allPage);
        model.addAttribute("page", page);
        if (travelslist != null) {
            return "travels_list";
        }
        return "error";
        //输出日志
//        logger.info("the travels.jsp page");
        //返回login.jsp视图
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
    public ModelAndView personal(HttpSession userSession){
        ModelAndView modelAndView = new ModelAndView();
        User user = (User) userSession.getAttribute("sessionUser");
        logger.info(user.getUserName());
        List<Travels> travels = travelsService.findTravelsByUserID(user.getId());

        modelAndView.setViewName("personal");

        modelAndView.addObject("travels",travels);
        //输出日志
        logger.info("the personal.jsp page");
        //返回personal.jsp视图
        return modelAndView;
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

    @RequestMapping("/travelsPostPage")
    public String travelsPostPage(){
        //输出日志
        logger.info("the travels_post.jsp page");
        //返回managerlogin.jsp视图
        return "travels_post";
    }
}
