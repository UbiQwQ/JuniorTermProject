package com.innovation.controller;

import com.innovation.dao.impl.UserDao;
import com.innovation.entity.User;
import com.innovation.service.impl.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * @Auther: Administrators
 * @Date: 2018/5/31 11:50
 * @Description:
 */
@Controller
public class AdminController {

    @Autowired
    private AdminService adminService;
    /**
     * 功能描述: 管理员界面测试
     *
     * @param:
     * @return:
     * @auther: Administrators
     * @date: 2018/5/29 17:04
     */
    @RequestMapping(value="/gotoadmin")
    public String goToAdmin() {
        System.out.println("-gotoadmin-");

        return "admin";
    }
    /**
     * 功能描述:跳转用户管理界面
     *
     * @param:
     * @return:
     * @auther: Administrators
     * @date: 2018/5/31 22:18
     */
    @RequestMapping(value="/usermanager")
    public String userManager(Model model) {
        List<User> userList = adminService.findAll();
        if (userList != null) {
            model.addAttribute("users", userList);
        }
        return "usermanager";
    }
}
