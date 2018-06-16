package com.innovation.service;


import com.innovation.dao.impl.CommentDao;
import com.innovation.entity.Comment;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * @Auther: Innovation
 * @Date: 2018/6/16 16:40
 * @Vison: 1.0
 * @Description:
 */

public interface ICommentService {

    Comment findCommentById(int id) throws Exception;
}
