package com.innovation.controller;

import com.innovation.dao.impl.ManagerDao;
import com.innovation.entity.Manager;
import com.innovation.entity.Travels;
import com.innovation.entity.User;
import com.innovation.service.impl.AdminService;
import com.innovation.service.impl.TravelsService;
import com.innovation.util.EmailUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

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
    private ManagerDao managerDao;

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
        return "login_manager";
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
    
    /** 
     * @description: travelsManager
     * @author: li  
     * @date: 2018/6/11 16:45
     * @param: [page, model]  
     * @return: java.lang.String  
     */ 
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
     * @description: 根据TravelId删除游记
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
        return "login_manager";
    }

    /**
     * @description: admin查询功能
     * @author: li
     * @date: 2018/6/6 17:53
     * @param: []
     * @return: java.lang.String
     */
    @RequestMapping(value = "/admin/query")
    public String adminQuery() {
       return "adminquery";
    }


    /**
     * @description: 跳转到请求解封的页面(block.jsp)
     * @author: li
     * @date: 2018/6/11 16:45
     * @param: []
     * @return: java.lang.String
     */
    @RequestMapping(value = "/admin/block")
    public String adminBlock() {
        return "block";
    }


    /**
     * @description: 发送邮箱
     * @author: li
     * @date: 2018/6/10 22:14
     * @param: [email, password]
     * @return: java.lang.String
     */
    @RequestMapping(value = "/admin/se")
    public String adminSendEmail(@RequestParam("email") String email, @RequestParam("password") String password) throws Exception {
        EmailUtil emailUtil = new EmailUtil();
        emailUtil.sendEmail(email,password);
        return "block";
    }

    /**
     * @description: 读取邮箱
     * @author: li
     * @date: 2018/6/11 16:47
     * @param: [model]
     * @return: java.lang.String
     */
    @RequestMapping(value = "/admin/email")
    public String adminReceiveEmail(Model model) throws Exception {
    /*  EmailUtil eamilUtil = new EmailUtil();
        Message[] messages = eamilUtil.getEmail();
        List messagelist = new ArrayList();
        for(int i=1;i<messages.length;i++) {
            messagelist.add(messages[i]);
        }
        model.addAttribute("messagelist",messagelist);*/
    /**
      * 此处想要实现的功能是-在管理员界面，管理员的下拉菜单中，点击"我的邮件",
      * 显示关联的管理员邮箱内容，可以查看请求解冻的用户邮件，然后找到该用户，
      * 在解冻功能栏进行解冻操作。
      *
      * "功能未实现"    "原因：管理员邮箱连接不上"
      */
        return "email";
    }

    /**
     * @description: 解冻用户jsp
     * @author: li
     * @date: 2018/6/11 16:56
     * @param: []
     * @return: java.lang.String
     */
    @RequestMapping(value = "/admin/admindeblocking")
    public String goToAdminJieDong(int page,Model model) {
        //每页的记录数量
        int pageSize = 9;
        allRows = adminService.queryBlockingUserRows();
        int[] params = pagingParam(page,allRows,pageSize);
        //查询用户列表
        List<User> userList = adminService.findBlockingUser(params[0], pageSize);
        model.addAttribute("users", userList);
        model.addAttribute("allPage",params[1]);
        model.addAttribute("page", page);
        if (userList != null) {
            return "admindeblock";
        }
        return "error";
    }

    /**
     * @description: 解冻用户
     * @author: li
     * @date: 2018/6/11 20:36
     * @param: [id]
     * @return: java.lang.String
     */
    @RequestMapping(value = "/admindeblocking")
    public String adminJieDong(int id,int page) {
        adminService.updateUserStatus(id);
        return "redirect:/admin/admindeblocking?page="+page;
    }


    @RequestMapping("/managerlogin")
    public ModelAndView managerLogin (String managerName, String password, HttpSession httpSession) throws Exception {

        ModelAndView modelAndView = new ModelAndView();
        // 登录用户，并将登录后的状态码返回，如果是0用户不存在，如果是1那么密码错误，如果是2那么密码正确
        int result = adminService.login(managerName, password);

        // 查找这个用户
        Manager manager = managerDao.findManagerByName(managerName);
        if (result == 2) {
            // 如果是2，那么登录成功，返回admin
            modelAndView.setViewName("admin");

            // 设置session
            httpSession.setAttribute("manager",manager);

        } else if (result == 1) {
            // 如果是1，那么密码错误，返回login
            modelAndView.addObject("pswErro", "<span class='help-inline' style='color: #ff0000'>密码错误！</span>");
            modelAndView.setViewName("login_manager");
        } else {
            // 否则用户名不存在，返回login
            modelAndView.addObject("userErro", "<span class='help-inline' style='color: #ff0000'>用户不存在！</span>");
            modelAndView.setViewName("login_manager");
        }

        return modelAndView;
    }
    
    /** 
     * @description: 禁用用户账号
     * @author: li  
     * @date: 2018/6/14 21:07
     * @param: [user, page]  
     * @return: java.lang.String  
     */ 
    @RequestMapping(value = "/blockByUserId")
    public String blockByUserId(User user,int page) {
        adminService.blockByUserId(user.getId());
        //重定向到usermanager，会重新查询数据
        //重定向到删除时所在的page数
        return "redirect:/admin/usermanager?page="+page;
    }

}
