package com.innovation.entity;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

/**
 * @Auther: Innovation
 * @Date: 2018/6/14 20:56
 * @Vison: 1.0
 * @Description:
 */
@Entity
public class Collect {
    private int collectId;
    private int travelsId;
    private int userId;
    private String travelTitle;

    @Id
    @Column(name = "collectId")
    public int getCollectId() {
        return collectId;
    }

    public void setCollectId(int collectId) {
        this.collectId = collectId;
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

        Collect collect = (Collect) o;

        if (collectId != collect.collectId) return false;
        if (travelsId != collect.travelsId) return false;
        if (userId != collect.userId) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = collectId;
        result = 31 * result + travelsId;
        result = 31 * result + userId;
        return result;
    }

    @Basic
    @Column(name = "travelTitle")
    public String getTravelTitle() {
        return travelTitle;
    }

    public void setTravelTitle(String travelTitle) {
        this.travelTitle = travelTitle;
    }
}
