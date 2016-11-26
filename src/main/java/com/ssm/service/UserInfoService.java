package com.ssm.service;

import com.ssm.po.UserInfo;

import java.util.List;

/**
 * Created by Administrator on 2016/11/25.
 */
public interface UserInfoService {
    UserInfo getUser(String userNumber);

    List<UserInfo> getUserList(UserInfo record);

    boolean add(UserInfo user);

    boolean update(UserInfo user);

    boolean delete(String userNumber);
}
