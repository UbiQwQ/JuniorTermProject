package com.innovation.dao;

import com.innovation.entity.Manager;
import com.innovation.entity.User;

/**
 * @Auther: Innovation
 * @Date: 2018/6/13 11:34
 * @Vison: 1.0
 * @Description:
 */
public interface IManagerDao {

    Manager findManagerByName(String name) throws Exception;

    void alterManagerPassWord(String name,String newpassword) throws Exception;
}
