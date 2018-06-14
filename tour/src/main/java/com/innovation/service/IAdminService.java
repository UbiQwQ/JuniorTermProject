package com.innovation.service;

import com.innovation.entity.User;

import java.util.List;

/**
 * @InterfaceName: IAdminService
 * @Description: IAdminService
 * @Author: li
 * @Date: 2018/6/2 16:14
 * @Version: 1.0
 */
public interface IAdminService {

    int login(String email, String password) throws Exception;

    /**
     * @description: 
     * @author: li  
     * @date: 2018/6/2 16:14  
     * @param: []  
     * @return: java.util.List<com.innovation.entity.User>  
     */ 
    List<User> findAllUser(int offset, int pageSize);


    /** 
     * @description: 
     * @author: li  
     * @date: 2018/6/11 17:09
     * @param: [offset, pageSize]  
     * @return: java.util.List<com.innovation.entity.User>  
     */ 
    List<User> findBlockingUser(int offset, int pageSize);


    /** 
     * @description: 
     * @author: li  
     * @date: 2018/6/2 16:17
     * @param: []  
     * @return: void  
     */  
    void deleteUserById(int id);


    /** 
     * @description: 
     * @author: li  
     * @date: 2018/6/6 19:14  
     * @param: []  
     * @return: java.lang.Integer  
     */
    int queryUserRows();


    /** 
     * @description: 
     * @author: li  
     * @date: 2018/6/11 17:10
     * @param: []  
     * @return: int  
     */ 
    int queryBlockingUserRows();


    /**
     * @description: updateUserStatus
     * @author: li
     * @date: 2018/6/11 20:31
     * @param: []
     * @return: void
     */
    void updateUserStatus(int id);
}
