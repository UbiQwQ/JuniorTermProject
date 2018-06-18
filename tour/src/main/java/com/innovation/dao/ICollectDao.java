package com.innovation.dao;

import com.innovation.entity.Collect;

import java.util.List;

/**
 * @Auther: Innovation
 * @Date: 2018/6/18 14:20
 * @Vison: 1.0
 * @Description:
 */

public interface ICollectDao {

    List<Collect> findCollectsByUserID(int id);

    void deleteCollectByCollectId(int collectId);

    List<Collect> findCollectsByTravleId(int travelId);
}
