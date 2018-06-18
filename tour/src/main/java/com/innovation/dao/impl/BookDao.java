package com.innovation.dao.impl;

import com.innovation.dao.IBookDao;
import com.innovation.entity.Book;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @Auther: Innovation
 * @Date: 2018/6/18 17:50
 * @Vison: 1.0
 * @Description:
 */
@Repository
public class BookDao implements IBookDao {

    @Autowired
    HibernateTemplate ht;

    @Override
    public List<Book> findBooksByUserID(int id) {
        List<Book> books = (List<Book>) ht.find("from Book where userId=?", id);
        return books;
    }
    @Override
    public void deleteBookByBookId(int bookId) {
        Book book = ht.get(Book.class,bookId);
        ht.delete(book);
    }
}
