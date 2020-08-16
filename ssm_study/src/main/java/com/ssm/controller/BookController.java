package com.ssm.controller;

import com.github.pagehelper.PageInfo;
import com.ssm.pojo.Book;
import com.ssm.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.jws.WebParam;
import java.util.List;

@Controller
@RequestMapping("/book")
public class BookController {
    //调用bookService层，通过注入方式（控制反转），自动装配
    @Autowired
    @Qualifier("bookServiceImpl")
    private BookService bookService;

    /**
     * 查询全部图书书籍，并返回到图书展示页面
     * @param model
     * @return
     */
    @RequestMapping("/allBook")
    public String list(Model model){
        List<Book> list = bookService.queryAllBook();
//        PageInfo<Book> pageInfo = bookService.queryAllBookForPage(pageNo, 5);
        model.addAttribute("list",list);//把books添加到域对象中
        return "allBook";
    }

    /**
     * 跳转到添加书籍页面
     * @return
     */
    @RequestMapping("/toAddBook")
    public String toAddBook(){
        return "addBook";
    }

    /**
     *  添加书籍，添加完重定向到addBook
     * @param book
     * @return
     */
    @RequestMapping("/addBook")
    public String addBook(Book book){

        bookService.addBook(book);
        return "redirect:/book/allBook";
    }

    /**
     * 跳转到修改页面
     * @param id 书籍id
     * @param model 视图
     * @return
     */
    @RequestMapping("/toUpdateBook")
    public String toUpdateBook(int id, Model model){
        Book book = bookService.queryBookById(id);
        model.addAttribute("book",book);
        return "updateBook";
    }

    @RequestMapping("/updateBook")
    public String updateBook(Book book){
        bookService.updateBook(book);
        return "redirect:/book/allBook";
    }

    @RequestMapping("/deleteBook/{bookID}")
    public String deleteBook(@PathVariable("bookID") int id){
        bookService.deleteBookById(id);
        return "redirect:/book/allBook?pageNo";
    }

    @RequestMapping("/queryBook")
    public String queryBook(String queryBookName,Model model){
        System.out.println(queryBookName);
        List<Book> list = bookService.queryBookByName(queryBookName);

        if (list.size()==0){
            model.addAttribute("error","未查到");
            return "redirect:/book/allBook";
        }
        model.addAttribute("list",list);
        return "allBook";
    }


}
