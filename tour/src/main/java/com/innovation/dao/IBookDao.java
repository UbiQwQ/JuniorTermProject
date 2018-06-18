package com.innovation.dao;

import com.innovation.entity.Book;

import java.util.List;

/**
 * @Auther: Innovation
 * @Date: 2018/6/18 17:51
 * @Vison: 1.0
 * @Description:
 */
public interface IBookDao {
    List<Book> findBooksByUserID(int id);

    void deleteBookByBookId(int bookId);
}
