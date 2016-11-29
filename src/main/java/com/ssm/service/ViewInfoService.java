package com.ssm.service;

import com.ssm.po.ViewInfo;

import java.util.List;

/**
 * Created by Administrator on 2016/11/28.
 */
public interface ViewInfoService {
    ViewInfo getViewInfo(Integer viewId);

    List<ViewInfo> getViewList(ViewInfo viewInfo);

    boolean add(ViewInfo viewInfo);

    boolean update(ViewInfo viewInfo);

    boolean delete(Integer viewId);
}
