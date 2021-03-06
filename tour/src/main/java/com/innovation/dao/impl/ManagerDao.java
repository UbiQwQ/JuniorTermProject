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
    public Manager findManagerByName(String name) throws Exception {
//        Manager manager;
//        List<Manager> managerList = (List<Manager>) ht.find("from Manager where name=?", name);
//        if(managerList != null){
//            manager = managerList.get(0);
//            return manager;
//        }
//        return null;
        Manager manager = ht.get(Manager.class,name);
        return manager;
    }

    @Override
    public void alterManagerPassWord(String name,String newpassword) throws Exception {
        Manager manager = ht.get(Manager.class,name);
        manager.setPassword(newpassword);
        ht.update(manager);
    }


}
