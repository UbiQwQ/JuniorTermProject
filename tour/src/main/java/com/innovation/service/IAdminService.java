package com.innovation.service;

import com.innovation.entity.User;

import java.util.List;

/**
 * @Auther: Administrators
 * @Date: 2018/5/31 23:00
 * @Vison: 1.0
 * @Description:
 */
public interface IAdminService {

    List<User> findAll();
}
