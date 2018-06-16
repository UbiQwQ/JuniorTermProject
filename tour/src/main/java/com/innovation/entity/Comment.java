package com.innovation.entity;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.sql.Timestamp;

/**
 * @Auther: Innovation
 * @Date: 2018/6/14 20:56
 * @Vison: 1.0
 * @Description:
 */
@Entity
public class Comment {
    private int commentId;
    private int travelsId;
    private int userId;
    private String content;
    private String travelsTitle;
    private Timestamp postTime;

    @Id
    @Column(name = "commentId")
    public int getCommentId() {
        return commentId;
    }

    public void setCommentId(int commentId) {
        this.commentId = commentId;
    }

    @Basic
    @Column(name = "travelsId")
    public int getTravelsId() {
        return travelsId;
    }

    public void setTravelsId(int travelsId) {
        this.travelsId = travelsId;
    }

    @Basic
    @Column(name = "userId")
    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Comment comment = (Comment) o;

        if (commentId != comment.commentId) return false;
        if (travelsId != comment.travelsId) return false;
        if (userId != comment.userId) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = commentId;
        result = 31 * result + travelsId;
        result = 31 * result + userId;
        return result;
    }

    @Basic
    @Column(name = "content")
    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    @Basic
    @Column(name = "travelsTitle")
    public String getTravelsTitle() {
        return travelsTitle;
    }

    public void setTravelsTitle(String travelsTitle) {
        this.travelsTitle = travelsTitle;
    }

    @Basic
    @Column(name = "postTime")
    public Timestamp getPostTime() {
        return postTime;
    }

    public void setPostTime(Timestamp postTime) {
        this.postTime = postTime;
    }
}
