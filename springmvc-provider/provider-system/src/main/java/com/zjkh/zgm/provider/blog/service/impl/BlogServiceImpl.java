package com.zjkh.zgm.provider.blog.service.impl;


import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.zjkh.zgm.facade.model.Blog;
import com.zjkh.zgm.facade.service.IBlogService;
import com.zjkh.zgm.provider.blog.mapper.BlogMapper;
import org.springframework.stereotype.Service;

@Service("blogService")
public class BlogServiceImpl extends ServiceImpl<BlogMapper,Blog> implements IBlogService {

    @Override
    public Blog selectByBlog(Blog blog) {
        return baseMapper.selectByBlog(blog);
    }
}
