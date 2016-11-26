package com.ssm.po;

import java.util.Date;

public class ViewInfo {
    private Integer viewId;

    private String userNumber;

    private String viewName;

    private Date viewTime;

    private String viewPhoto;

    private String viewDesc;

    public Integer getViewId() {
        return viewId;
    }

    public void setViewId(Integer viewId) {
        this.viewId = viewId;
    }

    public String getUserNumber() {
        return userNumber;
    }

    public void setUserNumber(String userNumber) {
        this.userNumber = userNumber == null ? null : userNumber.trim();
    }

    public String getViewName() {
        return viewName;
    }

    public void setViewName(String viewName) {
        this.viewName = viewName == null ? null : viewName.trim();
    }

    public Date getViewTime() {
        return viewTime;
    }

    public void setViewTime(Date viewTime) {
        this.viewTime = viewTime;
    }

    public String getViewPhoto() {
        return viewPhoto;
    }

    public void setViewPhoto(String viewPhoto) {
        this.viewPhoto = viewPhoto == null ? null : viewPhoto.trim();
    }

    public String getViewDesc() {
        return viewDesc;
    }

    public void setViewDesc(String viewDesc) {
        this.viewDesc = viewDesc == null ? null : viewDesc.trim();
    }
}