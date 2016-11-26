package com.ssm.po;

public class UserInfo {
    private String userNumber;

    private String userName;

    private String userPw;

    private String userType;

    public String getUserNumber() {
        return userNumber;
    }

    public void setUserNumber(String userNumber) {
        this.userNumber = userNumber == null ? null : userNumber.trim();
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName == null ? null : userName.trim();
    }

    public String getUserPw() {
        return userPw;
    }

    public void setUserPw(String userPw) {
        this.userPw = userPw == null ? null : userPw.trim();
    }

    public String getUserType() {
        return userType;
    }

    public void setUserType(String userType) {
        this.userType = userType == null ? null : userType.trim();
    }

    @Override
    public String toString() {
        return "UserInfo{" +
                "userNumber='" + userNumber + '\'' +
                ", userName='" + userName + '\'' +
                ", userPw='" + userPw + '\'' +
                ", userType='" + userType + '\'' +
                '}';
    }
}