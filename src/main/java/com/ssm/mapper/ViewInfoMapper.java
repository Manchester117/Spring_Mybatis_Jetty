package com.ssm.mapper;

import com.ssm.po.ViewInfo;
import org.springframework.stereotype.Component;

import java.util.List;

@Component(value = "viewInfoMapper")
public interface ViewInfoMapper {
    int deleteByPrimaryKey(Integer viewId);

    int insert(ViewInfo record);

    int insertSelective(ViewInfo record);

    ViewInfo selectByPrimaryKey(Integer viewId);

    List<ViewInfo> getViewList(ViewInfo record);

    int updateByPrimaryKeySelective(ViewInfo record);

    int updateByPrimaryKey(ViewInfo record);
}