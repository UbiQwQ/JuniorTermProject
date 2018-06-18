package com.innovation.service.impl;

import com.innovation.dao.impl.TravelsDao;
import com.innovation.entity.Travels;
import com.innovation.service.ITravelsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Auther: Innovation
 * @Date: 2018/6/8 11:29
 * @Vison: 1.0
 * @Description:
 */
@Service
public class TravelsService implements ITravelsService {
    @Autowired
    private TravelsDao travelsDao;

    @Override
    public int queryTravelsRows() {
        return travelsDao.queryTravelsRows();
    }
    
    /** 
     * @description: findAllTravels
     * @author: li  
     * @date: 2018/6/8 11:45
     * @param: [offset, length]  
     * @return: java.util.List<com.innovation.entity.Travels>  
     */ 
    @Override
    public List<Travels> findAllTravels(int offset, int length) {
        return travelsDao.findAllTravels(offset,length);
    }

    @Override
    public Travels findTravelsById(int id) throws Exception {
        Travels travel = travelsDao.findTravelsById(id);
        return travel;
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
    public List<Travels> findTravelsByUserID(int userId) {
        List<Travels> travelsByUserID = travelsDao.findTravelsByUserID(userId);
        if(travelsByUserID != null){
            return travelsByUserID;
        }
        return null;
    }


    @Override
    public void saveTravels(Travels travels) throws Exception {
        travelsDao.saveTravels(travels);
    }
    /** 
     * @description: 
     * @author: li  
     * @date: 2018/6/8 12:42
     * @param: [id]  
     * @return: void  
     */ 
    @Override
    public void deleteTravelsById(int id) throws Exception {
        try {
            if (travelsDao.deleteTravelsById(id).equals("Ok")) {
                travelsDao.deleteTravelsById(id);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public void updateTravels(Travels travels) throws Exception {
        travelsDao.updateTravels(travels);
    }
}
