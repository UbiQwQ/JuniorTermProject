package com.innovation.entity;


import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.sql.Timestamp;
import javax.persistence.Table;

/**
 * @Auther: Innovation
 * @Date: 2018/6/6 18:39
 * @Vison: 1.0
 * @Description:
 */
@Entity
@Table(name = "travels")
public class Travels {
    private int travelsId;
    private String title;
    private String content;
    private Timestamp postTime;
    private int userId;

    @Id
    @Column(name = "travelsId")
    public int getTravelsId() {
        return travelsId;
    }

    public void setTravelsId(int travelsId) {
        this.travelsId = travelsId;
    }

    @Basic
    @Column(name = "title")
    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
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
    @Column(name = "postTime")
    public Timestamp getPostTime() {
        return postTime;
    }

    public void setPostTime(Timestamp postTime) {
        this.postTime = postTime;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Travels travels = (Travels) o;

        if (travelsId != travels.travelsId) return false;
        if (title != null ? !title.equals(travels.title) : travels.title != null) return false;
        if (content != null ? !content.equals(travels.content) : travels.content != null) return false;
        if (postTime != null ? !postTime.equals(travels.postTime) : travels.postTime != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = travelsId;
        result = 31 * result + (title != null ? title.hashCode() : 0);
        result = 31 * result + (content != null ? content.hashCode() : 0);
        result = 31 * result + (postTime != null ? postTime.hashCode() : 0);
        return result;
    }

    @Basic
    @Column(name = "userId")
    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }
}
