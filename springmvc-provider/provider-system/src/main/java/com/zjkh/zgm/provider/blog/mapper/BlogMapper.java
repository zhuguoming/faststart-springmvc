package com.zjkh.zgm.provider.blog.mapper;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.zjkh.zgm.facade.model.Blog;

public interface BlogMapper extends BaseMapper<Blog> {
    Blog selectByBlog(Blog blog);
}
