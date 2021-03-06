package com.innovation.service;

import com.innovation.entity.Hotel;

import java.util.List;

/**
 * @Auther: Innovation
 * @Date: 2018/6/8 11:17
 * @Vison: 1.0
 * @Description:
 */
public interface IHotelService {
    //查询Hotel表总行数
    public int queryRows();
    //查找酒店
    public List<Hotel> findAllHotel();
    public List<Hotel> findHotelById(int id) throws Exception;
    public Hotel findHotelByName(String hotelName) throws Exception;
    public List<Hotel> findHotelByCityID(int cityId);

    //插入更新和删除
    public boolean saveHotel(Hotel hotel) throws Exception;
    public String deleteHotelById(int id) throws Exception;
    public boolean updateHotelr(Hotel hotel) throws Exception;
}
