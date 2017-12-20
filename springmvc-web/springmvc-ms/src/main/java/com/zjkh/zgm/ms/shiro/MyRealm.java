package com.zjkh.zgm.ms.shiro;

import com.zjkh.zgm.facade.model.User;
import com.zjkh.zgm.facade.service.IUserService;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 */
public class MyRealm extends AuthorizingRealm {

    @Autowired
    private IUserService userService;

    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {

        //获取登录时输入的用户名
        String loginName=(String) principalCollection.fromRealm(getName()).iterator().next();
        if("admin".equals(loginName)){
            //权限信息对象info,用来存放查出的用户的所有的角色（role）及权限（permission）
            SimpleAuthorizationInfo info=new SimpleAuthorizationInfo();
            info.addRole("admin");
            return info;

        }
        return null;
    }


    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {

        //UsernamePasswordToken对象用来存放提交的登录信息
        UsernamePasswordToken token=(UsernamePasswordToken) authenticationToken;

        User user = userService.selectUserByName(token.getUsername());

        if(null==user){
            return null;
        }else {
            return new SimpleAuthenticationInfo(user.getName(), user.getPassword(), getName());
        }
    }
}
