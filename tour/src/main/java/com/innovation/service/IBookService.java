package com.innovation.service;

import com.innovation.entity.Book;

import java.util.List;

/**
 * @Auther: Innovation
 * @Date: 2018/6/18 17:48
 * @Vison: 1.0
 * @Description:
 */
public interface IBookService {
    List<Book> findBooksByUserID(int id);

    void deleteBookByBookId(int bookId);
}
