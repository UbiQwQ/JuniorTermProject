package com.innovation.service.impl;

import com.innovation.dao.impl.HotelDao;
import com.innovation.entity.Hotel;
import com.innovation.service.IHotelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Auther: Innovation
 * @Date: 2018/6/8 11:18
 * @Vison: 1.0
 * @Description:
 */
@Service
public class HotelService implements IHotelService {

    @Autowired
    HotelDao hotelDao;

    @Autowired
    HibernateTemplate ht;

    @Override
    public int queryRows() {
        return 0;
    }

    @Override
    public List<Hotel> findAllHotel() {
        return hotelDao.findAllHotel();
    }

    @Override
    public List<Hotel> findHotelById(int id) throws Exception {
        return null;
    }

    @Override
    public Hotel findHotelByName(String hotelName) throws Exception {
        return null;
    }

    @Override
    public List<Hotel> findHotelByCityID(int cityId) {
        List<Hotel> hotelList = hotelDao.findHotelByCityID(cityId);
        return hotelList;
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
