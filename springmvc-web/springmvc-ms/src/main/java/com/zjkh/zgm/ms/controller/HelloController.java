package com.zjkh.zgm.ms.controller;


import com.alibaba.fastjson.JSON;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.zjkh.zgm.facade.model.User;
import com.zjkh.zgm.facade.service.IUserService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.*;
import org.apache.shiro.util.StringUtils;
import org.apache.shiro.web.filter.authc.FormAuthenticationFilter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping
public class HelloController {

    @Autowired
    private IUserService userService;

    @RequestMapping("hello")
    public ModelAndView hello(){
        List<User> users = userService.selectList(new EntityWrapper<User>());
        ModelAndView model=new ModelAndView("hello");
        model.addObject("user",users);
        return model;

    }

    @RequestMapping("users")
    @ResponseBody
    public String getUserList(){
        List<User> users = userService.selectList(new EntityWrapper<User>());
        return JSON.toJSONString(users);
    }


    @RequestMapping("login")
    public String login(HttpServletRequest request, Model model){
        //如果登陆失败从request中获取认证异常信息，shiroLoginFailure就是shiro异常类的全限定名
        String exceptionClassName = (String) request.getAttribute(FormAuthenticationFilter.DEFAULT_ERROR_KEY_ATTRIBUTE_NAME);

        if(StringUtils.hasText(exceptionClassName)){
            if (UnknownAccountException.class.getName().equals(exceptionClassName)) {
                //最终会抛给异常处理器
                model.addAttribute("message", "账号不存在!");
            } else if (IncorrectCredentialsException.class.getName().equals(
                    exceptionClassName)) {
                model.addAttribute("message", "用户名/密码错误!");
            }else if(LockedAccountException.class.getName().equals(exceptionClassName)){
                model.addAttribute("message", "账号已被锁定，请与系统管理员联系!");
            }else if(AuthenticationException.class.getName().equals(exceptionClassName)){
                model.addAttribute("message", "您没有授权！");
            }else if(ExcessiveAttemptsException.class.getName().equals(exceptionClassName)){
                model.addAttribute("message", "密码错误次数过多,请过一段时间操作！");
            }else {
                model.addAttribute("message", "未知异常！");
            }
        }else{
            Object principal = SecurityUtils.getSubject().getPrincipal();
            if(principal != null){
                return "redirect:/hello";
            }
        }
        return "login";
    }

    @RequestMapping("user")
    @ResponseBody
    public String getUser(){
        User user = userService.selectById(1);
        return JSON.toJSONString(user);



    }




}
