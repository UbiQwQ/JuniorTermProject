package com.innovation.entity;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.math.BigDecimal;

/**
 * @Auther: Innovation
 * @Date: 2018/6/6 18:23
 * @Vison: 1.0
 * @Description:
 */
@Entity
public class Hotel {
    private int hotelId;
    private String name;
    private BigDecimal price;
    private String description;
    private int cityId;
    private String avatar;



    @Id
    @Column(name = "hotelId")
    public int getHotelId() {
        return hotelId;
    }

    public void setHotelId(int hotelId) {
        this.hotelId = hotelId;
    }

    @Basic
    @Column(name = "name")
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Basic
    @Column(name = "price")
    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    @Basic
    @Column(name = "description")
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Basic
    @Column(name = "cityId")
    public int getCityId() {
        return cityId;
    }

    public void setCityId(int cityId) {
        this.cityId = cityId;
    }

    @Basic
    @Column(name = "avatar")
    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Hotel hotel = (Hotel) o;

        if (hotelId != hotel.hotelId) return false;
        if (cityId != hotel.cityId) return false;
        if (name != null ? !name.equals(hotel.name) : hotel.name != null) return false;
        if (price != null ? !price.equals(hotel.price) : hotel.price != null) return false;
        if (description != null ? !description.equals(hotel.description) : hotel.description != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = hotelId;
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + (price != null ? price.hashCode() : 0);
        result = 31 * result + (description != null ? description.hashCode() : 0);
        result = 31 * result + cityId;
        return result;
    }
}
