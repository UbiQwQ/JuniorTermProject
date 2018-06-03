package com.innovation.dao;

import com.innovation.BaseTest;
import com.innovation.dao.impl.UserDao;
import com.innovation.entity.User;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

import static org.junit.Assert.*;

/**
 * @Auther: Innovation
 * @Date: 2018/5/28 19:23
 * @Vison: 1.0
 * @Description:
 */
public class UserDaoTest extends BaseTest {
    @Autowired
    private UserDao userDao;

    @Test
    public void testFindUserById() throws Exception {
        List<User> userList = (List<User>) userDao.findUserById(1);
        assertEquals(1,userList.size());
    }
}
