package com.ssm.service;

import com.github.pagehelper.PageInfo;
import com.ssm.pojo.Book;

import java.util.List;

/**
 * @author yzs
 * @create 2020-07-26 14:57
 */
public interface BookService {
    //增加一个Book
    int addBook(Book book);

    //根据id删除一个Book
    int deleteBookById(int id);

    //更新Book
    int updateBook(Book book);

    //根据id查询,返回一个Book
    Book queryBookById(int id);

    //查询全部Book,返回list集合
    List<Book> queryAllBook();

    PageInfo<Book> queryAllBookForPage(int pageNo, int pageSize);

    //查询图书按名字，模糊查询
    List<Book> queryBookByName(String bookName);
}
