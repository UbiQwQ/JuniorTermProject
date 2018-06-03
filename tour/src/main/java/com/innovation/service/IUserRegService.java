package com.innovation.service;

import com.innovation.entity.User;

/**
 * @Auther: Innovation
 * @Date: 2018/5/20 12:07
 * @Vison: 1.0
 * @Description:
 */
public interface IUserRegService {
    /**
     * 功能描述: 
     *
     * @param: user 新增加的用户实体类
     * @return: 
     * @auther: Innovation
     * @date: 2018/5/20 12:09
     */
    public void saveUser(User user) throws Exception;
}
