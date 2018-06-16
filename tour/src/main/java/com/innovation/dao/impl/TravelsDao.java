package com.innovation.dao.impl;

import com.innovation.dao.ITravelsDao;
import com.innovation.entity.Travels;
import com.innovation.entity.User;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateCallback;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @Auther: Innovation
 * @Date: 2018/6/8 11:28
 * @Vison: 1.0
 * @Description:
 */
@Repository
public class TravelsDao implements ITravelsDao {

    @Autowired
    private HibernateTemplate ht;

    /**
     * @description: queryTravelsRows
     * @author: li
     * @date: 2018/6/8 11:47
     * @param: []
     * @return: int
     */
    @Override
    public int queryTravelsRows() {
        String hql = "select count(*) from Travels as travels";
        Session session = ht.getSessionFactory().openSession();
        Query query = session.createQuery(hql);
        int count = ((Long) query.iterate().next()).intValue();
        //用完session一定要关闭
        session.close();
        return count;
    }

    /**
     * @description: findAllTravels
     * @author: li
     * @date: 2018/6/8 11:41
     * @param: [offset, length]
     * @return: java.util.List<com.innovation.entity.Travels>
     */
    @Override
    public List<Travels> findAllTravels(final int offset,final int length) {
        List<Travels> list = (List<Travels>) ht.execute(new HibernateCallback() {
            public Object doInHibernate(Session session)
                    throws HibernateException {
                Query query = session.createQuery("from com.innovation.entity.Travels");
                query.setFirstResult(offset);
                query.setMaxResults(length);
                List list = query.list();
                return list;
            }
        });
        return list;
    }

    @Override
    public Travels findTravelsById(int id) throws Exception {
        Travels travel = ht.get(Travels.class,id);
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
        List<Travels> travels = (List<Travels>) ht.find("from Travels where userId=?", userId);
        if(travels != null){
            return travels;
        }
        return null;
    }

    @Override
    public boolean saveTravels(Travels travels) throws Exception {
        return false;
    }
    /** 
     * @description: 
     * @author: li  
     * @date: 2018/6/8 12:40  
     * @param: [id]  
     * @return: java.lang.String  
     */ 
    @Override
    public String deleteTravelsById(int id) throws Exception {
        //book为标记
        String book = "Ok";
        Travels travels = ht.get(Travels.class,id);
        if (travels != null) {
            ht.delete(travels);
        } else {
            book = "No";
        }
        return book;
    }

    @Override
    public boolean updateTravels(Travels travels) throws Exception {
        return false;
    }
}
