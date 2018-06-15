package com.innovation.service.impl;

import com.innovation.dao.impl.ManagerDao;
import com.innovation.dao.impl.UserDao;
import com.innovation.entity.Manager;
import com.innovation.entity.User;
import com.innovation.service.IAdminService;
import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
/**
 * @ClassName: AdminService
 * @Description: AdminService
 * @Author: li
 * @Date: 2018/6/2 16:10
 * @Version: 1.0
 */
@Service
public class AdminService implements IAdminService {

    @Autowired
    private UserDao userDao;
    @Autowired
    private ManagerDao managerDao;


    /**
     * 功能描述: 管理员登录
     * @param:
     * @return:
     * @auther: Innovation
     * @date: 2018/6/13 11:32
     */
    @Override
    public int login(String name, String password) throws Exception {
        Manager manager = managerDao.findManagerByName(name);
        if(manager==null){
            return 0;		//用户不存在     返回0
        }else{
            if(password.equals(manager.getPassword())){
                return 2;	//用户密码正确    返回2
            }else{
                return 1;	//用户密码错误    返回1
            }
        }
    }

    /**
     * @description: 查询所有用户
     * @author: li
     * @date: 2018/6/2 16:17
     * @param: []
     * @return: java.util.List<com.innovation.entity.User>
     */
    @Override
    public List<User> findAllUser(int offset, int pageSize) {
        return userDao.findAllUser(offset,pageSize);
    }

    /**
     * @description: 查询所有被封用户
     * @author: li
     * @date: 2018/6/11 21:14
     * @param: [offset, pageSize]
     * @return: java.util.List<com.innovation.entity.User>
     */
    @Override
    public List<User> findBlockingUser(int offset, int pageSize) {
        return userDao.findBlockingUser(offset,pageSize);
    }


    /**
     * @description: 查询用户总行数
     * @author: li
     * @date: 2018/6/8 10:52
     * @param: []
     * @return: int
     */
    @Override
    public int queryUserRows() {
        return userDao.queryUserRows();
    }

    /**
     * @description: 查询被封禁用户总行数
     * @author: li
     * @date: 2018/6/11 17:14
     * @param: []
     * @return: int
     */
    @Override
    public int queryBlockingUserRows() {
        return userDao.queryBlockingUserRows();
    }


    /**
     * @description: 解禁用户
     * @author: li
     * @date: 2018/6/11 20:31
     * @param: []
     * @return: void
     */
    @Override
    public void updateUserStatus(int id) {
        userDao.updateUserStatus(id);
    }

    /**
     * @description:
     * @author: li
     * @date: 2018/6/15 16:37
     * @param: [id]
     * @return: void
     */
    @Override
    public void blockByUserId(int id) {
        userDao.blockByUserId(id);
    }


    /**
     * @description: 根据 user.id 删除用户
     * @author: li
     * @date: 2018/6/2 16:17
     * @param: []
     * @return: void
     */
    @Override
    public void deleteUserById(int id) {
        try {
            if (userDao.deleteUserById(id).equals("Ok")) {
                userDao.deleteUserById(id);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

    }
}
