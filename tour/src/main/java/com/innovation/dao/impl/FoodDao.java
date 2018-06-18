package com.innovation.dao.impl;

import com.innovation.dao.IFoodDao;
import com.innovation.entity.Food;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @Auther: Innovation
 * @Date: 2018/6/8 10:53
 * @Vison: 1.0
 * @Description:
 */
@Repository
public class FoodDao implements IFoodDao {

    @Autowired
    HibernateTemplate ht;

    @Override
    public int queryRows() {
        return 0;
    }

    /**
     * @description: foodList
     * @author: li
     * @date: 2018/6/18 12:32
     * @param: []
     * @return: java.util.List<com.innovation.entity.Food>
     */
    @Override
    public List<Food> findAllFood() {
        List<Food> foodList = (List<Food>) ht.find("from com.innovation.entity.Food");
        return foodList;
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
    public boolean updateFood(Food food) throws Exception {
        return false;
    }
}
