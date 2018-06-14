package com.innovation.entity;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

/**
 * @Auther: Innovation
 * @Date: 2018/6/14 20:56
 * @Vison: 1.0
 * @Description:
 */
@Entity
public class Book {
    private int bookId;
    private int hotelId;
    private int userId;

    @Id
    @Column(name = "bookId")
    public int getBookId() {
        return bookId;
    }

    public void setBookId(int bookId) {
        this.bookId = bookId;
    }

    @Basic
    @Column(name = "hotelId")
    public int getHotelId() {
        return hotelId;
    }

    public void setHotelId(int hotelId) {
        this.hotelId = hotelId;
    }

    @Basic
    @Column(name = "userId")
    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Book book = (Book) o;

        if (bookId != book.bookId) return false;
        if (hotelId != book.hotelId) return false;
        if (userId != book.userId) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = bookId;
        result = 31 * result + hotelId;
        result = 31 * result + userId;
        return result;
    }
}
