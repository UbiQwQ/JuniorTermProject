package com.innovation.service.impl;

import com.innovation.dao.impl.UserDao;
import com.innovation.entity.User;
import com.innovation.service.IUserLoginService;
import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @Auther: Innovation
 * @Date: 2018/5/22 17:24
 * @Vison: 1.0
 * @Description:
 */
@Service
public class UserLoginService implements IUserLoginService {

    @Autowired
    private UserDao userDao;

    @Override
    public int login(String email, String password) throws Exception {
        User user=userDao.findUserByEmail(email);
        if(user==null){
            return 0;		//用户不存在     返回0
        }else{
            if(DigestUtils.md5Hex(password).equals(user.getPassword())){
                return 2;	//用户密码正确    返回2
            }else{
                return 1;	//用户密码错误    返回1
            }
        }
    }
}
