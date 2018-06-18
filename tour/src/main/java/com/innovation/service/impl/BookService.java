package com.innovation.service.impl;

import com.innovation.dao.impl.BookDao;
import com.innovation.entity.Book;
import com.innovation.service.IBookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Auther: Innovation
 * @Date: 2018/6/18 17:47
 * @Vison: 1.0
 * @Description:
 */
@Service
public class BookService implements IBookService {

    @Autowired
    BookDao bookDao;

    @Override
    public List<Book> findBooksByUserID(int id) {
        List<Book> books = bookDao.findBooksByUserID(id);
        return books;
    }

    @Override
    public void deleteBookByBookId(int bookId) {
        bookDao.deleteBookByBookId(bookId);
    }
}
