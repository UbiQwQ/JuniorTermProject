package com.innovation.controller;

import com.innovation.entity.User;
import com.innovation.service.impl.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
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
     * @description: 跳转到usermanager.jsp分页显示数据
     * @author: li
     * @date: 2018/6/2 16:12
     * @param: [model]
     * @return: java.lang.String
     */
    @RequestMapping(value = "/admin/usermanager")
    public String userManager(int page, Model model) {
        //总共有多少页
        int allPage;
        //页面显示用户数量
        int pageSize = 9;
        //数据记录总行数
        int allRows;
        //第一条记录的索引
        int offset;
        //查询记录总行数
        allRows = adminService.queryUserRows();
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
        //查询用户列表
        List<User> userList = adminService.findAll(offset, pageSize);
        model.addAttribute("users", userList);
        model.addAttribute("allPage",allPage);
        model.addAttribute("page", page);
        if (userList != null) {
            return "usermanager";
        }
        return "error";
    }

    /**
     * @description: 根据id删除用户
     * @author: li
     * @date: 2018/6/2 16:12
     * @param: [user]
     * @return: void
     */
    @RequestMapping(value = "/deleteById")
    public String deleteById(User user,int page) {
        adminService.deleteUserById(user.getId());
        //重定向到usermanager，会重新查询数据
        //重定向到删除时所在的page数
        return "redirect:/admin/usermanager?page="+page;
    }

    /**
     * @description: 管理员退出
     * @author: li
     * @date: 2018/6/6 17:21
     * @param: [httpSession]
     * @return: java.lang.String
     */
    @RequestMapping(value = "/admin/logout")
    public String adminLogout(HttpSession httpSession) {
        //设置session失效
        httpSession.invalidate();
        return "login";
    }

    /**
     * @description:
     * @author: li
     * @date: 2018/6/6 17:53
     * @param: []
     * @return: java.lang.String
     */
    @RequestMapping(value = "/admin/query")
    public String adminquery() {
       return "adminquery";
    }

}
