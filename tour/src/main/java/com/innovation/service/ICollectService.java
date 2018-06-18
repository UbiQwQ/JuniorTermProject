package com.innovation.service;

import com.innovation.entity.Collect;

import java.util.List;

/**
 * @Auther: Innovation
 * @Date: 2018/6/18 14:17
 * @Vison: 1.0
 * @Description:
 */
public interface ICollectService {

    List<Collect> findCollectsByUserID(int id);

    void deleteCollectByCollectId(int collectId);

    List<Collect> findCollectsByTravleId(int travelId);
}
