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
public class Food {
    private int foodId;
    private String name;
    private BigDecimal price;
    private String description;
    private int cityId;
    private String avatar;


    @Basic
    @Column(name = "avatar")
    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    @Id
    @Column(name = "foodId")
    public int getFoodId() {
        return foodId;
    }

    public void setFoodId(int foodId) {
        this.foodId = foodId;
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

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Food food = (Food) o;

        if (foodId != food.foodId) return false;
        if (cityId != food.cityId) return false;
        if (name != null ? !name.equals(food.name) : food.name != null) return false;
        if (price != null ? !price.equals(food.price) : food.price != null) return false;
        if (description != null ? !description.equals(food.description) : food.description != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = foodId;
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + (price != null ? price.hashCode() : 0);
        result = 31 * result + (description != null ? description.hashCode() : 0);
        result = 31 * result + cityId;
        return result;
    }
}
