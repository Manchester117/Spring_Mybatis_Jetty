package com.ssm.service.impl;

import com.ssm.mapper.UserInfoMapper;
import com.ssm.po.UserInfo;
import com.ssm.service.UserInfoService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Administrator on 2016/11/25.
 */
@Service(value = "userInfoServiceImpl")
public class UserInfoServiceImpl implements UserInfoService{
    @Resource(name = "userInfoMapper")
    private UserInfoMapper userInfoMapper;

    public UserInfo getUser(String userNumber) {
        return userInfoMapper.selectByPrimaryKey(userNumber);
    }

    public List<UserInfo> getUserList(UserInfo record) {
        if (record != null) {
            if (record.getUserName() != null && !record.getUserName().equals("")) {
                record.setUserName("%" + record.getUserName() + "%");
            }
        }

        return userInfoMapper.getUserList(record);
    }

    public boolean add(UserInfo user) {
        int flag = userInfoMapper.insertSelective(user);
        return flag > 0;
    }

    public boolean update(UserInfo user) {
        int flag = userInfoMapper.updateByPrimaryKeySelective(user);
        return flag > 0;
    }

    public boolean delete(String userNumber) {
        int flag = userInfoMapper.deleteByPrimaryKey(userNumber);
        return flag > 0;
    }
}
