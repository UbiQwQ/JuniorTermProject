package com.innovation.service.impl;

import com.innovation.entity.Food;
import com.innovation.service.IFoodService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;

import java.util.List;

/**
 * @Auther: Innovation
 * @Date: 2018/6/8 11:00
 * @Vison: 1.0
 * @Description:
 */
public class FoodService implements IFoodService {

    @Autowired
    HibernateTemplate ht;

    @Override
    public List<Food> findAll(int offset, int length) {
        return null;
    }

    @Override
    public Food findFoodById(int id) throws Exception {
        return null;
    }

    @Override
    public Food findFoodByName(String foodName) throws Exception {
        return null;
    }

    @Override
    public List<Food> findFoodByCityID(int cityId) {
        return null;
    }

    @Override
    public boolean saveFood(Food food) throws Exception {
        return false;
    }

    @Override
    public String deleteFoodById(int id) throws Exception {
        return null;
    }

    @Override
    public boolean updateFoodr(Food food) throws Exception {
        return false;
    }
}
