package com.ssm.mapper;

import com.ssm.po.UserInfo;
import org.springframework.stereotype.Component;

import java.util.List;

@Component(value = "userInfoMapper")
public interface UserInfoMapper {
    int deleteByPrimaryKey(String userNumber);

    int insert(UserInfo record);

    int insertSelective(UserInfo record);

    UserInfo selectByPrimaryKey(String userNumber);

    List<UserInfo> getUserList(UserInfo record);

    int updateByPrimaryKeySelective(UserInfo record);

    int updateByPrimaryKey(UserInfo record);
}