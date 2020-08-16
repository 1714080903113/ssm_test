package com.ssm.controller;

import com.ssm.pojo.Book;
import com.ssm.service.BookServiceImpl;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

/**
 * @author yzs
 * @create 2020-08-03 17:33
 */
public class BookControllerTest {

    @Test
    public void list(){
        ApplicationContext context =
                new ClassPathXmlApplicationContext("applicationContext.xml");
        BookServiceImpl bsi = context.getBean("bookServiceImpl", BookServiceImpl.class);
        List<Book> books = bsi.queryAllBook();
        for (Book book:books){
            System.out.println(book);
        }
    }

    @Test
    public void updateBook(){
        ApplicationContext context =
                new ClassPathXmlApplicationContext("applicationContext.xml");
        BookServiceImpl bsi = context.getBean("bookServiceImpl", BookServiceImpl.class);
        Book book1 = bsi.queryBookById(1);
        book1.setBookCounts(10);
        bsi.updateBook(book1);
    }


    @Test
    public void delete(){
        ApplicationContext context =
                new ClassPathXmlApplicationContext("applicationContext.xml");
        BookServiceImpl bsi = context.getBean("bookServiceImpl", BookServiceImpl.class);
        bsi.deleteBookById(4);
    }

    @Test
    public void queryBookByName(){
        ApplicationContext context =
                new ClassPathXmlApplicationContext("applicationContext.xml");
        BookServiceImpl bsi = context.getBean("bookServiceImpl", BookServiceImpl.class);
        List<Book> books = bsi.queryBookByName("Lin");
        for (Book book:books){
            System.out.println(book);
        }
    }
}
