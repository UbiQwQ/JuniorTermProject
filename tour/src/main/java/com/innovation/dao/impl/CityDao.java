package com.innovation.dao.impl;

import com.innovation.dao.ICityDao;
import com.innovation.entity.City;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @Auther: Innovation
 * @Date: 2018/6/7 19:18
 * @Vison: 1.0
 * @Description:
 */
@Repository
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
        List<City> cityList = (List<City>) ht.find("from City where name=?", cityName);
        int cityId = cityList.get(0).getId();
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
