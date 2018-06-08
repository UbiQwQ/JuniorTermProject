package com.innovation.service.impl;

import com.innovation.entity.Hotel;
import com.innovation.service.IHotelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;

import java.util.List;

/**
 * @Auther: Innovation
 * @Date: 2018/6/8 11:18
 * @Vison: 1.0
 * @Description:
 */
public class HotelService implements IHotelService {

    @Autowired
    HibernateTemplate ht;

    @Override
    public int queryRows() {
        return 0;
    }

    @Override
    public List<Hotel> findAll(int offset, int length) {
        return null;
    }

    @Override
    public Hotel findHotelById(int id) throws Exception {
        return null;
    }

    @Override
    public Hotel findHotelByName(String hotelName) throws Exception {
        return null;
    }

    @Override
    public List<Hotel> findHotelByCityID(int cityId) {
        return null;
    }

    @Override
    public boolean saveHotel(Hotel hotel) throws Exception {
        return false;
    }

    @Override
    public String deleteHotelById(int id) throws Exception {
        return null;
    }

    @Override
    public boolean updateHotelr(Hotel hotel) throws Exception {
        return false;
    }
}
