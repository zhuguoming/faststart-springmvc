package com.zjkh.zgm.facade.service;

import com.baomidou.mybatisplus.service.IService;
import com.zjkh.zgm.facade.model.User;

/**
 * Created with IntelliJ IDEA.
 * Description:
 * User: zgm
 * Date: 2017/12/4
 * Time: 13:37
 */
public interface IUserService extends IService<User>{

    /**
     * 依据用户名称查询用户
     * @param username
     * @return
     */
    User selectUserByName(String username);
}
