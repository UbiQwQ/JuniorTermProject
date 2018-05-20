package com.innovation.service;

/**
 * @Auther: Innovation
 * @Date: 2018/5/20 12:00
 * @Vison: 1.0
 * @Description:
 */
public interface UserLoginService {
    /**
     * 功能描述: 
     * @param: email    用来登录的邮箱
     * @param: passwrod 用来登录的密码
     * @return: 
     * @auther: Innovation
     * @date: 2018/5/20 12:02
     */
    public int login(String email,String password) throws Exception;
}
