package com.zjkh.zgm.blog.controller;


import com.zjkh.zgm.facade.model.Blog;
import com.zjkh.zgm.facade.service.IBlogService;
import com.zjkh.zgm.facade.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping
public class HelloController {

    @Autowired
    private IUserService userService;

    @Autowired
    private IBlogService blogService;

    @RequestMapping("hello")
    public String hello(Blog blog){
        userService.selectUserByName("admin");
        return "hello";
    }


    @RequestMapping("tetsEnum")
    public String test(Blog blog){
        blogService.selectByBlog(blog);
        return "hello";
    }
}
