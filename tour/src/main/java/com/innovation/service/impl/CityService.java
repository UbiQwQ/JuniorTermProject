package com.innovation.service.impl;

import com.innovation.dao.impl.CityDao;
import com.innovation.service.ICityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @Auther: Innovation
 * @Date: 2018/6/8 10:38
 * @Vison: 1.0
 * @Description:
 */
@Service
public class CityService implements ICityService {

    @Autowired
    CityDao cityDao;

    @Override
    public int findCityIdByName(String cityName) throws Exception {
        return cityDao.findCityIdByName(cityName);
    }
}
