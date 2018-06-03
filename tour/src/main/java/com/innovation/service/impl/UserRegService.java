package com.innovation.service.impl;

import com.innovation.dao.impl.UserDao;
import com.innovation.entity.User;
import com.innovation.service.IUserRegService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @Auther: Innovation
 * @Date: 2018/5/22 17:23
 * @Vison: 1.0
 * @Description:
 */
@Service
public class UserRegService implements IUserRegService {

    @Autowired
    UserDao userDao;

    /**
     * 功能描述: 用户注册
     *
     * @param: user
     * @return: void
     * @auther: Innovation
     * @date: 2018/5/25 16:49
     */
    @Override
    public void saveUser(User user) throws Exception {
        userDao.saveUser(user);
    }
}
