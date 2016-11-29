package com.ssm.service.impl;

import com.ssm.mapper.ViewInfoMapper;
import com.ssm.po.ViewInfo;
import com.ssm.service.ViewInfoService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Administrator on 2016/11/28.
 */
@Service(value = "viewInfoServiceImpl")
public class ViewInfoServiceImpl implements ViewInfoService{

    @Resource(name = "viewInfoMapper")
    private ViewInfoMapper viewInfoMapper;

    public boolean add(ViewInfo viewInfo) {
        int flag = viewInfoMapper.insertSelective(viewInfo);

        return flag > 0;
    }

    public List<ViewInfo> getViewList(ViewInfo viewInfo) {
        if (viewInfo != null) {
            if (viewInfo.getViewName() != null && !viewInfo.getViewName().equals("")) {
                viewInfo.setViewName("%" + viewInfo.getViewName() + "%");
            }
        }
        return viewInfoMapper.getViewList(viewInfo);
    }

    public ViewInfo getViewInfo(Integer viewId) {
        return viewInfoMapper.selectByPrimaryKey(viewId);
    }

    public boolean update(ViewInfo viewInfo) {
        int flag = viewInfoMapper.updateByPrimaryKeySelective(viewInfo);

        return flag > 0;
    }

    public boolean delete(Integer viewId) {
        int flag = viewInfoMapper.deleteByPrimaryKey(viewId);

        return flag > 0;
    }
}
