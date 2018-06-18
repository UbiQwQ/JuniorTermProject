package com.innovation.dao.impl;

import com.innovation.dao.IHotelDao;
import com.innovation.entity.Hotel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @Auther: Innovation
 * @Date: 2018/6/8 11:16
 * @Vison: 1.0
 * @Description:
 */
@Repository
public class HotelDao implements IHotelDao {

    @Autowired
    HibernateTemplate ht;

    @Override
    public int queryRows() {
        return 0;
    }

    @Override
    public List<Hotel> findAllHotel() {
        List<Hotel> hotel = (List<Hotel>) ht.find("from com.innovation.entity.Hotel");
        return hotel;
    }

    @Override
    public Hotel findHotelById(int id) throws Exception {
        return null;
    }

    @Override
    public List<Hotel> findHotelByName(String hotelName) throws Exception {
        List<Hotel> hotelList = (List<Hotel>) ht.find("from Hotel where name=?", hotelName);
        return hotelList;
    }

    @Override
    public List<Hotel> findHotelByCityID(int cityId) {
        List<Hotel> hotelList = (List<Hotel>) ht.find("from Hotel where cityId=?", cityId);
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
