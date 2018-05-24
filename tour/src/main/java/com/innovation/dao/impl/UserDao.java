package com.innovation.dao.impl;

import com.innovation.dao.IUserDao;
import com.innovation.entity.User;
import org.springframework.stereotype.Repository;

/**
 * @Auther: Innovation
 * @Date: 2018/5/19 16:21
 * @Vison: 1.0
 * @Description:
 */
@Repository
public class UserDao implements IUserDao {
    @Override
    public User findUserById(int id) throws Exception {
        return null;
    }

    @Override
    public User findUserByUserName(String userName) throws Exception {
        return null;
    }

    @Override
    public User findUserByEmail(String email) throws Exception {
        return null;
    }

    @Override
    public User findUserByPhone(String phone) throws Exception {
        return null;
    }

    @Override
    public int insertUser(User user) throws Exception {
        return 0;
    }

    @Override
    public void deleteUser(int id) throws Exception {

    }

    @Override
    public int midifyPassWord(String userName, String newPassWord) throws Exception {
        return 0;
    }

    @Override
    public int midifyPhone(String userName, String newPhone) throws Exception {
        return 0;
    }

    @Override
    public int activateUser(String email) throws Exception {
        return 0;
    }
}
