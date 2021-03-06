package com.innovation.dao;

import com.innovation.entity.Food;

import java.util.List;

/**
 * @Auther: Innovation
 * @Date: 2018/6/8 10:45
 * @Vison: 1.0
 * @Description:
 */
public interface IFoodDao {

    //查询Food表总行数
    public int queryRows();
    //查找美食
    public List<Food> findAllFood();
    public Food findFoodById(int id) throws Exception;
    public Food findFoodByName(String foodName) throws Exception;
    public List<Food> findFoodByCityID(int cityId);

    //插入更新和删除
    public boolean saveFood(Food food) throws Exception;
    public String deleteFoodById(int id) throws Exception;
    public boolean updateFood(Food food) throws Exception;
}
