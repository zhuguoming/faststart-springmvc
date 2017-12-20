package com.zjkh.zgm.blog.controller;


import com.zjkh.zgm.facade.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping
public class HelloController {

    @Autowired
    private IUserService userService;

    @RequestMapping("hello")
    public String hello(){
        userService.selectUserByName("admin");
        return "hello";
    }

}
