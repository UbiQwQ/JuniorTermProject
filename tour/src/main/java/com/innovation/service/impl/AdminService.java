package com.innovation.service.impl;

import com.innovation.dao.impl.UserDao;
import com.innovation.entity.User;
import com.innovation.service.IAdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class AdminService implements IAdminService {

    @Autowired
    private UserDao userDao;
    @Override
    public List<User> findAll() {
        return userDao.findAll();
    }
}
