package com.innovation.controller;

import com.innovation.entity.*;
import com.innovation.service.impl.*;
import net.bytebuddy.asm.Advice;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

/**
 * @Auther: Innovation
 * @Date: 2018/6/15 19:40
 * @Vison: 1.0
 * @Description:
 */
@Controller
public class PersonalController {
    @Autowired
    TravelsService travelsService;
    @Autowired
    UserService userService;
    @Autowired
    HotelService hotelService;
    @Autowired
    CommentService commentService;
    @Autowired
    CollectService collectService;
    @Autowired
    BookService bookService;

    //添加一个日志器
    private static final Logger logger = LoggerFactory.getLogger(PersonalController.class);

    @RequestMapping("/regretTravel")
    public ModelAndView regretTravel(HttpSession userSession,int travelId) throws Exception {
        ModelAndView modelAndView = new ModelAndView();

        travelsService.deleteTravelsById(travelId);

        // 设置信息和视图名称
        User user = (User) userSession.getAttribute("sessionUser");
        List<Travels> travels = travelsService.findTravelsByUserID(user.getId());

        modelAndView.setViewName("personal");

        modelAndView.addObject("travels",travels);

        //输出日志文件
        logger.info("the city jsp pages");
        //返回视图
        return modelAndView;
    }

    @RequestMapping("/lookTravel")
    public ModelAndView lookTravel(int travelId,HttpSession userSession) throws Exception {
        ModelAndView modelAndView = new ModelAndView();
        logger.info("travelId",travelId);
        Travels travel = travelsService.findTravelsById(travelId);
        logger.info(travel.toString());
        int userId  = travel.getUserId();
        User user= userService.findUserById(userId);

        // 设置信息和视图名称

        modelAndView.setViewName("travels");

        modelAndView.addObject("travel",travel);
        modelAndView.addObject("user",user);

        //输出日志文件
        logger.info("the travels jsp pages");
        //返回视图
        return modelAndView;
    }


    @RequestMapping("/personalCommentPage")
    public ModelAndView personalCommentPage(HttpSession userSession){
        ModelAndView modelAndView = new ModelAndView();
        User user = (User) userSession.getAttribute("sessionUser");
        logger.info(user.getUserName());
        List<Comment> comments= commentService.findCommentByUserId(user.getId());

        modelAndView.setViewName("personal_comment");

        modelAndView.addObject("comments",comments);
//        userSession.setAttribute("sessionComments",comments);
        //输出日志
        logger.info("the personal_comment.jsp page");
        //返回personal.jsp视图
        return modelAndView;
    }

    @RequestMapping("/regretComment")
    public ModelAndView regretComment(HttpSession userSession,int commentId) throws Exception {
        ModelAndView modelAndView = new ModelAndView();

        commentService.deleteCommentByCommentId(commentId);

        // 设置信息和视图名称
        User user = (User) userSession.getAttribute("sessionUser");
        List<Comment> comments = commentService.findCommentByUserId(user.getId());

        modelAndView.setViewName("personal_comment");

        modelAndView.addObject("comments",comments);

        //输出日志文件
        logger.info("the city jsp pages");
        //返回视图
        return modelAndView;
    }


    @RequestMapping("/regretCollect")
    public ModelAndView regretCollect(HttpSession userSession,int collectId) throws Exception {
        ModelAndView modelAndView = new ModelAndView();

        collectService.deleteCollectByCollectId(collectId);

        // 设置信息和视图名称
        User user = (User) userSession.getAttribute("sessionUser");
        List<Collect> collects = collectService.findCollectsByUserID(user.getId());

        modelAndView.setViewName("personal_collect");

        modelAndView.addObject("collects",collects);

        //输出日志文件
        logger.info("the personal_collect jsp pages");
        //返回视图
        return modelAndView;
    }

    @RequestMapping("/regretOrder")
    public ModelAndView regretOrder(HttpSession userSession,int bookId) throws Exception {
        ModelAndView modelAndView = new ModelAndView();

        bookService.deleteBookByBookId(bookId);

        // 设置信息和视图名称
        User user = (User) userSession.getAttribute("sessionUser");
        List<Book> books = bookService.findBooksByUserID(user.getId());

        modelAndView.setViewName("personal_order");

        modelAndView.addObject("orders",books);

        //输出日志文件
        logger.info("the personal_order jsp pages");
        //返回视图
        return modelAndView;
    }

}
