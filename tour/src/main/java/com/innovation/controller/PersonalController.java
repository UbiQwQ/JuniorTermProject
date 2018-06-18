package com.innovation.controller;

import com.innovation.entity.*;
import com.innovation.service.impl.*;
import net.bytebuddy.asm.Advice;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

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

        List<Collect> collects = collectService.findCollectsByTravleId(travelId);
        int collectNum = collects.size();

        // 设置信息和视图名称

        modelAndView.setViewName("travels");

        modelAndView.addObject("travel",travel);
        modelAndView.addObject("user",user);
        modelAndView.addObject("collectNum",collectNum);

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



    @RequestMapping("/personalAvatarPage")
    public String personalSettingPage(){
        //输出日志
        logger.info("the personal_avatar.jsp page");
        //返回managerlogin.jsp视图
        return "personal_avatar";
    }


    @RequestMapping("/avatarSetting")
    public ModelAndView avatarSetting(MultipartFile avatar, HttpSession session) throws Exception {

        ModelAndView modelAndView = new ModelAndView();
        String orginFilename = avatar.getOriginalFilename();//拿到图片原始名称
        //上传图片
        if(avatar != null && orginFilename != null && orginFilename.length() > 0){
            //存储图片的物理路径
            String avatarPath = "E:\\Documents\\GitHub\\JuniorTermProject\\image\\";
            //新的图片名称
            String newFilename = UUID.randomUUID() + orginFilename.substring(orginFilename.lastIndexOf("."));
            //新的图片
            File newFile = new File(avatarPath + newFilename);

            //将内存中的数据写入磁盘
            avatar.transferTo(newFile);

            //如果上传成功，要将图片名称写到filePath中
            modelAndView.addObject("filePath", newFilename);
            User user = (User) session.getAttribute("sessionUser");
            user.setAvatar("pic/"+newFilename);
            userService.updateUser(user);
        }

        modelAndView.setViewName("personal_avatar");

//        itemsService.updateItems(id, itemsCustom);

        //我们也可以不使用注解，而直接使用model将pojo数据回显到页面
        //model.addAttribute("items", itemsCustom);
        //model.addAttribute("id", id);

        return modelAndView;
    }


    @RequestMapping("/personalSetting")
    public String personalSetting(String nickname, String phone,HttpSession session){

        User user = (User) session.getAttribute("sessionUser");
        user.setUserName(nickname);
        user.setPhone(phone);
        userService.updateUser(user);
        //输出日志
        logger.info("the personal_set.jsp page");
        //返回managerlogin.jsp视图
        return "personal_set";
    }
}
