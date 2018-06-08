package com.innovation.controller;

import com.innovation.entity.Travels;
import com.innovation.entity.User;
import com.innovation.service.impl.AdminService;
import com.innovation.service.impl.TravelsService;
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

    @Autowired
    private TravelsService travelsService;

    //数据库中总数量
    private int allRows;
    //总共有多少页
    int allPage;
    //第一条记录的索引
    int offset;

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
        //每页的记录数量
        int pageSize = 9;
        allRows = adminService.queryUserRows();
        int[] params = pagingParam(page,allRows,pageSize);
        //查询用户列表
        List<User> userList = adminService.findAllUser(params[0], pageSize);
        model.addAttribute("users", userList);
        model.addAttribute("allPage",params[1]);
        model.addAttribute("page", page);
        if (userList != null) {
            return "usermanager";
        }
        return "error";
    }

    @RequestMapping(value = "admin/travelsmanager")
    public String travelsManager(int page, Model model) {
        int pageSize = 5;
        allRows = travelsService.queryTravelsRows();
        int[] params = pagingParam(page,allRows,pageSize);
        List<Travels> travelslist = travelsService.findAllTravels(params[0], pageSize);
        model.addAttribute("travels", travelslist);
        model.addAttribute("allPage",params[1]);
        model.addAttribute("page", page);
        if (travelslist != null) {
            return "travelsmanager";
        }
        return "error";
    }

    /**
     * @description: return offset , allPage
     * @author: li
     * @date: 2018/6/8 10:53
     * @param: [page, allRows]
     * @return: int[]
     */
    public int[] pagingParam(int page,int allRows,int pageSize) {
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
        int[] params = {offset,allPage};
        return params;
    }

    /**
     * @description: 根据id删除用户
     * @author: li
     * @date: 2018/6/2 16:12
     * @param: [user]
     * @return: void
     */
    @RequestMapping(value = "/deleteByUserId")
    public String deleteByUserId(User user,int page) {
        adminService.deleteUserById(user.getId());
        //重定向到usermanager，会重新查询数据
        //重定向到删除时所在的page数
        return "redirect:/admin/usermanager?page="+page;
    }
    
    /** 
     * @description: 
     * @author: li  
     * @date: 2018/6/8 12:26
     * @param: [travel, page]  
     * @return: java.lang.String  
     */ 
    @RequestMapping(value = "/deleteByTravelId")
    public String deleteByTravelId(int id,int page) throws Exception {
        travelsService.deleteTravelsById(id);
        //travelsmanager，会重新查询数据
        //重定向到删除时所在的page数
        return "redirect:/admin/travelsmanager?page="+page;
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
