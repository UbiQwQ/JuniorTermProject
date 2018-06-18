package com.innovation.dao;

import com.innovation.entity.Comment;

import java.util.List;

/**
 * @Auther: Innovation
 * @Date: 2018/6/16 16:43
 * @Vison: 1.0
 * @Description:
 */
public interface ICommentDao {
    Comment findCommentById(int id);

    List<Comment> findCommentByUserId(int userId);

    void deleteCommentByCommentId(int commentId);
}
