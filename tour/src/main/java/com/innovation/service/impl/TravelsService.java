package com.innovation.service.impl;

import com.innovation.entity.Travels;
import com.innovation.service.ITravelsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;

import java.util.List;

/**
 * @Auther: Innovation
 * @Date: 2018/6/8 11:29
 * @Vison: 1.0
 * @Description:
 */
public class TravelsService implements ITravelsService {

    @Autowired
    HibernateTemplate ht;

    @Override
    public int queryRows() {
        return 0;
    }

    @Override
    public List<Travels> findAll(int offset, int length) {
        return null;
    }

    @Override
    public Travels findTravelsById(int id) throws Exception {
        return null;
    }

    @Override
    public Travels findTravelsByName(String travelsName) throws Exception {
        return null;
    }

    @Override
    public List<Travels> findTravelsByCityID(int cityId) {
        return null;
    }

    @Override
    public boolean saveTravels(Travels travels) throws Exception {
        return false;
    }

    @Override
    public String deleteTravelsById(int id) throws Exception {
        return null;
    }

    @Override
    public boolean updateTravels(Travels travels) throws Exception {
        return false;
    }
}
