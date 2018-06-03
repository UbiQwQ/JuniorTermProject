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
    
    /** 
     * @description: 
     * @author: li  
     * @date: 2018/6/2 16:14  
     * @param: []  
     * @return: java.util.List<com.innovation.entity.User>  
     */ 
    List<User> findAll();
    /** 
     * @description: 
     * @author: li  
     * @date: 2018/6/2 16:17
     * @param: []  
     * @return: void  
     */  
    void deleteUserById(int id);
}
