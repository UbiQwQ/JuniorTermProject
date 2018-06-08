package com.innovation.dao;

import com.innovation.entity.City;

import java.util.List;

/**
 * @Auther: Innovation
 * @Date: 2018/6/7 18:56
 * @Vison: 1.0
 * @Description:
 */
public interface ICityDao {

    //查询cityr表总行数
    public int queryUserRows();
    //查找城市
    public List<City> findAll(final int offset, final int length);
    public City findCityById(int id) throws Exception;
    public City findCityByName(String cityName) throws Exception;
    public int findCityIdByName(String cityName) throws Exception;

    //插入更新和删除
    public void saveCity(City city) throws Exception;
    public String deleteCityById(int id) throws Exception;
}
