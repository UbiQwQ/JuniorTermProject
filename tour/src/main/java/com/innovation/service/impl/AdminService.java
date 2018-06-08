package com.innovation.service.impl;

import com.innovation.dao.impl.UserDao;
import com.innovation.entity.User;
import com.innovation.service.IAdminService;
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
     * @description:
     * @author: li
     * @date: 2018/6/8 10:52
     * @param: []
     * @return: int
     */
    public int queryUserRows() {
        return userDao.queryUserRows();
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
