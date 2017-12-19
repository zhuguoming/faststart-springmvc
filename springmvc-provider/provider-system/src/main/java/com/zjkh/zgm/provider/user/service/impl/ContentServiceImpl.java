package com.zjkh.zgm.provider.user.service.impl;


import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.zjkh.zgm.facade.model.Content;
import com.zjkh.zgm.facade.service.IContentService;
import com.zjkh.zgm.provider.user.mapper.ContentMapper;
import org.springframework.stereotype.Service;

@Service("contentService")
public class ContentServiceImpl  extends ServiceImpl<ContentMapper,Content> implements IContentService {


}
