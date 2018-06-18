package com.innovation.service.impl;

import com.innovation.dao.impl.CollectDao;
import com.innovation.entity.Collect;
import com.innovation.service.ICollectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Auther: Innovation
 * @Date: 2018/6/18 14:17
 * @Vison: 1.0
 * @Description:
 */
@Service
public class CollectService implements ICollectService {

    @Autowired
    CollectDao collectDao;

    @Override
    public List<Collect> findCollectsByUserID(int id) {
        List<Collect> collects = collectDao.findCollectsByUserID(id);
        return collects;
    }

    @Override
    public void deleteCollectByCollectId(int collectId) {
        collectDao.deleteCollectByCollectId(collectId);
    }
}
