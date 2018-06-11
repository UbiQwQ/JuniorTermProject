package com.innovation.dao;

import com.innovation.entity.User;
import java.util.List;

/**
 * @Auther: Innovation
 * @Date: 2018/5/19 16:19
 * @Vison: 1.0
 * @Description:
 */
public interface IUserDao {

    //查询user表总行数
    public int queryUserRows();
    public int queryBlockingUserRows();
    //查找用户
    public List<User> findBlockingUser(final int offset, final int length);
    public List<User> findAllUser(final int offset, final int length);
    public User findUserById(int id) throws Exception;
    public User findUserByUserName(String userName) throws Exception;
    public User findUserByEmail(String email) throws Exception;
    public User findUserByPhone(String phone) throws Exception;

    //插入更新和删除
    public void saveUser(User user) throws Exception;
    public String deleteUserById(int id) throws Exception;
    //
    public void updateUserStatus(int id);


    //更改用户密码
    public int midifyPassWord(String userName,String newPassWord) throws Exception;
    //更改手机号
    public int midifyPhone(String userName,String newPhone) throws Exception;
    //激活邮箱
    public int activateUser(String email) throws Exception;

}
