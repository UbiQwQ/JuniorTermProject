package com.innovation.service;

import com.innovation.entity.User;

/**
 * @Auther: Innovation
 * @Date: 2018/5/23 17:00
 * @Vison: 1.0
 * @Description:
 */
public interface IUserService {


    public User findUserById(int userId) throws Exception;

    /**
     * 功能描述: 绑定用户手机号
     *
     * @param: userName  用户名  newPhone 用户手机号
     * @return:
     * @auther: Innovation
     * @date: 2018/5/23 17:01
     */
    public void bindPhone(String userName,String phone) throws Exception;

    /**
     * 功能描述: 激活用户邮箱
     *
     * @param: email    用户邮箱
     * @return:
     * @auther: Innovation
     * @date: 2018/5/23 17:03
     */
    public void activateUser(String email) throws Exception;

    /**
     * 功能描述:重置密码
     *
     * @param:
     * @return: newPassword     新密码
     * @auther: Innovation
     * @date: 2018/5/23 17:03
     */
    public void resetPassWord(String userName,String newPassword) throws Exception;

    void updateUser(User user);
}
