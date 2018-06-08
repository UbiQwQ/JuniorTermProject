package com.innovation.dao.impl;

import com.innovation.dao.ICityDao;
import com.innovation.entity.City;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;

import java.util.List;

/**
 * @Auther: Innovation
 * @Date: 2018/6/7 19:18
 * @Vison: 1.0
 * @Description:
 */
public class CityDao implements ICityDao {

    @Autowired
    private HibernateTemplate ht;

    @Override
    public int queryUserRows() {
        return 0;
    }

    @Override
    public List<City> findAll(int offset, int length) {
        return null;
    }

    @Override
    public City findCityById(int id) throws Exception {
        return null;
    }

    @Override
    public City findCityByName(String cityName) throws Exception {
        return null;
    }

    @Override
    public int findCityIdByName(String cityName) throws Exception {
        City city = ht.get(City.class,cityName);
        int cityId = city.getId();
        return cityId;
    }

    @Override
    public void saveCity(City city) throws Exception {

    }

    @Override
    public String deleteCityById(int id) throws Exception {
        return null;
    }
}
