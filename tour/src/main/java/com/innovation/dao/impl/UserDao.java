package com.innovation.dao.impl;

import com.innovation.dao.IUserDao;
import com.innovation.entity.User;
import org.hibernate.FlushMode;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import javax.persistence.FlushModeType;
import java.util.List;

/**
 * @Auther: Innovation
 * @Date: 2018/5/19 16:21
 * @Vison: 1.0
 * @Description:
 */
@Repository
public class UserDao implements IUserDao {

    @Autowired
    private HibernateTemplate ht;
    /**
     * @description: 查询所有用户
     * @author: li
     * @date: 2018/6/2 16:21
     * @param: []
     * @return: java.util.List<com.innovation.entity.User>
     */
    @Override
    public List<User> findAll() {
        return (List<User>)ht.find("from com.innovation.entity.User ");
    }

    @Override
    public User findUserById(int id) throws Exception {
        User user = ht.get(User.class,id);
        return user;
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

    /**
     * 功能描述: 向数据库中插入user数据
     *
     * @param: user
     * @return:
     * @auther: Innovation
     * @date: 2018/5/25 16:53
     */
    @Override
    public void insertUser(User user) throws Exception {
        ht.save(user);
    }
    /** 
     * @description: 
     * @author: li  
     * @date: 2018/6/2 17:01
     * @param: [id]  
     * @return: java.lang.String  
     */
    @Override
    public String deleteUserById(int id) throws Exception {
        String book = "Ok";
        User user = ht.get(User.class,id);
        if (user != null) {
            ht.delete(user);
        } else {
            book = "No";
        }
        return book;
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
