package com.innovation.service.impl;

import com.innovation.dao.impl.CommentDao;
import com.innovation.entity.Comment;
import com.innovation.service.ICommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Auther: Innovation
 * @Date: 2018/6/16 16:39
 * @Vison: 1.0
 * @Description:
 */
@Service
public class CommentService implements ICommentService {
    @Autowired
    CommentDao commentDao;

    @Override
    public Comment findCommentById(int id) throws Exception {
        Comment comment = commentDao.findCommentById(id);
        return comment;
    }

    public List<Comment> findCommentByUserId(int userId) {
        List<Comment> comments = commentDao.findCommentByUserId(userId);
        return comments;
    }
}
