package com.innovation.dao.impl;

import com.innovation.dao.ICommentDao;
import com.innovation.entity.Comment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @Auther: Innovation
 * @Date: 2018/6/16 16:43
 * @Vison: 1.0
 * @Description:
 */
@Repository
public class CommentDao implements ICommentDao {

    @Autowired
    private HibernateTemplate ht;

    public Comment findCommentById(int id) {
        Comment comment = ht.get(Comment.class,id);
        return comment;
    }

    public List<Comment> findCommentByUserId(int userId) {
        List<Comment> comments = (List<Comment>) ht.find("from Comment where userId=?",userId);
        return comments;
    }
}
