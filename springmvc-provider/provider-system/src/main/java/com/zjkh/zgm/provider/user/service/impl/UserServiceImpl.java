package com.zjkh.zgm.provider.user.service.impl;

import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.zjkh.zgm.facade.model.User;
import com.zjkh.zgm.facade.service.IUserService;
import com.zjkh.zgm.provider.user.mapper.UserMapper;
import org.springframework.stereotype.Service;

/**
 * Created with IntelliJ IDEA.
 * Description:
 * User: zgm
 * Date: 2017/12/4
 * Time: 13:39
 */
@Service("userService")
public class UserServiceImpl extends ServiceImpl<UserMapper,User> implements IUserService {
    @Override
    public User selectUserByName(String username) {
        return baseMapper.selectUserByName(username);
    }
}
