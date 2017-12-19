package com.zjkh.zgm.ms.controller;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.zjkh.zgm.facade.model.Content;
import com.zjkh.zgm.facade.model.User;
import com.zjkh.zgm.facade.service.IContentService;
import com.zjkh.zgm.facade.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping
public class ContentController {


    @Autowired
    private IUserService userService;

    @Autowired
    private IContentService contentService;

    @RequestMapping("/find")
    public ModelAndView findContent() {

        ModelAndView model = new ModelAndView("content");
        List<Content> lists = contentService.selectList(new EntityWrapper<Content>());
        model.addObject("contents",lists);

        return model;
    }


}
