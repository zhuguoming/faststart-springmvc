package com.zjkh.zgm.provider.user.mapper;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.zjkh.zgm.facade.model.User;

/**
 * Created with IntelliJ IDEA.
 * Description:
 * User: zgm
 * Date: 2017/12/4
 * Time: 13:38
 */
public interface UserMapper extends BaseMapper<User> {

    User selectUserByName(String username);
}
