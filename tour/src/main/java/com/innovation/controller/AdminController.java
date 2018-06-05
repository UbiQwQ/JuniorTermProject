package com.innovation.controller;

import com.innovation.entity.User;
import com.innovation.service.impl.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

/**
 * @ClassName: AdminController
 * @Description: adminController
 * @Author: li
 * @Date: 2018/6/2 16:10
 * @Version: 1.0
 */
@Controller
public class AdminController {

    @Autowired
    private AdminService adminService;

    /**
     * @description: 跳转到admin.jsp
     * @author: li
     * @date: 2018/6/2 16:13
     * @param: []
     * @return: java.lang.String
     */
    @RequestMapping(value = "/gotoadmin")
    public String goToAdmin() {
        System.out.println("-gotoadmin-");

        return "admin";
    }

    /**
     * @description: 跳转到usermanager.jsp
     * @author: li
     * @date: 2018/6/2 16:12
     * @param: [model]
     * @return: java.lang.String
     */
    @RequestMapping(value = "/gotousermanager")
    public String userManager(Model model) {
        List<User> userList = adminService.findAll();
        if (userList != null) {
            //"users" 是jsp页面中foreach中的items要进行迭代的集合
            model.addAttribute("users", userList);
        }
        return "usermanager";
    }

    /**
     * @description: 根据id删除用户
     * @author: li
     * @date: 2018/6/2 16:12
     * @param: [user]
     * @return: void
     */
    @RequestMapping(value = "/deleteById")
    public String deleteById(User user) {
        adminService.deleteUserById(user.getId());
        //重定向到usermanager，会重新查询数据
        return "redirect:/gotousermanager";
    }

}
