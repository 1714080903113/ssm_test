package com.ssm.dao;

import com.ssm.pojo.Book;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author yzs
 * @create 2020-07-26 14:41
 */
public interface BookMapper {
    //增加一个Book
    int addBook(Book book);

    //根据id删除一个Book
    int deleteBookById(@Param("bookID") int id);

    //更新Book
    int updateBook(Book book);

    //根据id查询,返回一个Book
    Book queryBookById(@Param("bookID") int id);

    //查询全部Book,返回list集合
    List<Book> queryAllBook();

    //通过模糊查询名字查找书籍
    List<Book> queryBookByName(String bookName);
}
