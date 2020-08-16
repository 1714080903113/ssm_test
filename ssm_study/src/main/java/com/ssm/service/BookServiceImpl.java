package com.ssm.service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.ssm.dao.BookMapper;
import com.ssm.pojo.Book;

import java.util.List;


public class BookServiceImpl implements BookService {
    private BookMapper bookMapper;

    public void setBookMapper(BookMapper bookMapper) {
        this.bookMapper = bookMapper;
    }

    public int addBook(Book book) {
        return bookMapper.addBook(book);
    }

    public int deleteBookById(int id) {
        return bookMapper.deleteBookById(id);
    }

    public int updateBook(Book book) {
        return bookMapper.updateBook(book);
    }

    public Book queryBookById(int id) {
        return bookMapper.queryBookById(id);
    }

    public List<Book> queryAllBook() {
        return bookMapper.queryAllBook();
    }

    public PageInfo<Book> queryAllBookForPage(int pageNo,int pageSize){
        PageHelper.startPage(pageNo,pageSize);
        List<Book> list = bookMapper.queryAllBook();
        PageInfo<Book> pageInfo = new PageInfo<Book>(list);
        return pageInfo;
    }

    public List<Book> queryBookByName(String bookName) {
        return bookMapper.queryBookByName(bookName);
    }
}
