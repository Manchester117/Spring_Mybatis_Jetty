package com.ssm.mapper;

import com.ssm.po.ViewInfo;
import org.springframework.stereotype.Component;

@Component(value = "viewInfoMapper")
public interface ViewInfoMapper {
    int deleteByPrimaryKey(Integer viewId);

    int insert(ViewInfo record);

    int insertSelective(ViewInfo record);

    ViewInfo selectByPrimaryKey(Integer viewId);

    int updateByPrimaryKeySelective(ViewInfo record);

    int updateByPrimaryKey(ViewInfo record);
}