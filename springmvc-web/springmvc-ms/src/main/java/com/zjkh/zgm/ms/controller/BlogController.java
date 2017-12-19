package com.zjkh.zgm.ms.controller;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.zjkh.zgm.facade.model.Blog;
import com.zjkh.zgm.facade.service.IBlogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("blog")
public class BlogController {


    @Autowired
    private IBlogService blogService;

    @RequestMapping
    public String findContent(Model model) {
        List<Blog> lists = blogService.selectList(new EntityWrapper<Blog>());
        model.addAttribute("contents",lists);
        return "blog/blog";
    }


}
