package com.innovation.dao.impl;

import com.innovation.dao.ICollectDao;
import com.innovation.entity.Collect;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @Auther: Innovation
 * @Date: 2018/6/18 14:20
 * @Vison: 1.0
 * @Description:
 */
@Repository
public class CollectDao implements ICollectDao {
    @Autowired
    HibernateTemplate ht;
    @Override
    public List<Collect> findCollectsByUserID(int id) {
        List<Collect> collects = (List<Collect>) ht.find("from Collect where userId=?",id);
        return collects;
    }
    @Override
    public void deleteCollectByCollectId(int collectId) {
        Collect collect = ht.get(Collect.class, collectId);
        ht.delete(collect);
    }
    @Override
    public List<Collect> findCollectsByTravleId(int travelId) {
        List<Collect> collects = (List<Collect>) ht.find("from Collect where travelsId=?",travelId);
        return collects;
    }
}
