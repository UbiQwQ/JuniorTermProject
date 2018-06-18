package com.innovation.service.impl;

import com.innovation.dao.impl.UserDao;
import com.innovation.entity.User;
import com.innovation.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @Auther: Innovation
 * @Date: 2018/5/23 17:00
 * @Vison: 1.0
 * @Description:
 */
@Service
public class UserService implements IUserService {

    @Autowired
    UserDao userDao;

    @Override
    public User findUserById(int userId) throws Exception {
        User user = userDao.findUserById(userId);
        return user;
    }

    @Override
    public void bindPhone(String userName, String phone) throws Exception {

    }

    @Override
    public void activateUser(String email) throws Exception {

    }

    @Override
    public void resetPassWord(String userName, String newPassword) throws Exception {

    }

    @Override
    public void updateUser(User user) {
        userDao.updateUser(user);
    }
}
