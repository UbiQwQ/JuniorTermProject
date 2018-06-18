package com.innovation.controller;

import com.innovation.entity.Travels;
import com.innovation.entity.User;
import com.innovation.service.impl.TravelsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.io.File;
import java.sql.Timestamp;
import java.util.Date;
import java.util.UUID;

/**
 * @Auther: Innovation
 * @Date: 2018/6/18 22:56
 * @Vison: 1.0
 * @Description:
 */
@Controller
public class TravelController {

    @Autowired
    TravelsService travelsService;

    @RequestMapping("/postTravel")
    public ModelAndView postTravel(MultipartFile image, String title,String content, HttpSession session) throws Exception {

        ModelAndView modelAndView = new ModelAndView();
        String orginFilename = image.getOriginalFilename();//拿到图片原始名称
        //上传图片
        if(image != null && orginFilename != null && orginFilename.length() > 0){
            //存储图片的物理路径
            String imagePath = "E:\\Documents\\GitHub\\JuniorTermProject\\image\\";
            //新的图片名称
            String newFilename = UUID.randomUUID() + orginFilename.substring(orginFilename.lastIndexOf("."));
            //新的图片
            File newFile = new File(imagePath + newFilename);

            //将内存中的数据写入磁盘
            image.transferTo(newFile);



            //如果上传成功，要将图片名称写到filePath中
//            modelAndView.addObject("filePath", newFilename);
            User user = (User) session.getAttribute("sessionUser");
            Travels travel = new Travels();
            travel.setTitle(title);
            travel.setContent(content);
            Timestamp timestamp = new Timestamp(System.currentTimeMillis());
            travel.setPostTime(timestamp);
            travel.setUserId(user.getId());
            travel.setImg("pic/"+newFilename);

            travelsService.saveTravels(travel);
        }

        modelAndView.setViewName("personal_avatar");

//        itemsService.updateItems(id, itemsCustom);

        //我们也可以不使用注解，而直接使用model将pojo数据回显到页面
        //model.addAttribute("items", itemsCustom);
        //model.addAttribute("id", id);

        return modelAndView;
    }
}
