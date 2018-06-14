package com.innovation.dao.impl;

import com.innovation.dao.IManagerDao;
import com.innovation.entity.Manager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @Auther: Innovation
 * @Date: 2018/6/13 11:34
 * @Vison: 1.0
 * @Description:
 */
@Repository
public class ManagerDao implements IManagerDao {

    @Autowired
    HibernateTemplate ht;

    @Override
    public Manager findUserByEmail(String name) throws Exception {
        Manager manager;
        List<Manager> userList = (List<Manager>) ht.find("from Manager where name=?", name);
        if(userList != null){
            manager = userList.get(0);
            return manager;
        }
        return null;
    }
}
