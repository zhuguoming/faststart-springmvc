package com.zjkh.zgm.ms.controller;


import com.alibaba.fastjson.JSON;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.zjkh.zgm.facade.model.User;
import com.zjkh.zgm.facade.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping
public class HelloController {

    @Autowired
    private IUserService userService;

    @RequestMapping("hello")
    public String hello(){
        return "hello";
    }

    @RequestMapping("user")
    @ResponseBody
    public String getUserList(){
        List<User> users = userService.selectList(new EntityWrapper<User>());
        return JSON.toJSONString(users);
    }
}
