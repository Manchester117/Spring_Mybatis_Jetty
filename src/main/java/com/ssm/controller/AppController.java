package com.ssm.controller;

import com.ssm.po.UserInfo;
import com.ssm.po.ViewInfo;
import com.ssm.service.UserInfoService;
import com.ssm.service.ViewInfoService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by Administrator on 2016/11/29.
 */
@Controller(value = "appController")
@RequestMapping(value = "/app")
public class AppController {

    @Resource(name = "userInfoServiceImpl")
    private UserInfoService userInfoService;

    @Resource(name = "viewInfoServiceImpl")
    private ViewInfoService viewInfoService;

    @RequestMapping(value = "/reg")
    public String reg(UserInfo userInfo, Model model) {
        if (userInfo != null) {
            userInfo.setUserType("普通用户");
        }

        boolean mark = userInfoService.add(userInfo);

        if (mark) {
            model.addAttribute("info", "用户注册成功,请登录");
            return "jsp/app/login";
        } else {
            return "jsp/app/reg";
        }
    }

    @RequestMapping("/login")
    public String login(String userNumber, String userPw, Model model, HttpSession session) {
        if (userNumber != null && !userNumber.equals("")) {
            UserInfo user = userInfoService.getUser(userNumber);
            if (user != null && user.getUserPw().equals(userPw)) {
                session.setAttribute("userInfo", user);
                return getViewList(model);
            } else {
                model.addAttribute("info", "账号或密码错误");
            }
        } else {
            model.addAttribute("info", "账号密码不能为空");
        }

        return "jsp/app/login";
    }

    @RequestMapping("/getViewList")
    public String getViewList(Model model) {
        List<ViewInfo> viewInfoList = viewInfoService.getViewList(null);
        model.addAttribute("viewList", viewInfoList);
        return "jsp/app/index";
    }

    @RequestMapping("/getViewInfo")
    public String getViewInfo(Integer viewId, Model model) {
        ViewInfo viewInfo = viewInfoService.getViewInfo(viewId);
        model.addAttribute("viewInfo", viewInfo);
        return "jsp/app/view_info";
    }

    @RequestMapping("/updatePassword")
    public String updatePassword(UserInfo user, String passWord, Model model, HttpSession session) {
        UserInfo userInfo = (UserInfo) session.getAttribute("userInfo");

        if (userInfo != null && passWord != null && passWord.equals(userInfo.getUserPw())) {
            boolean mark = userInfoService.update(user);
            if (mark) {
                model.addAttribute("info", "密码修改成功,请重新登录.");
                return "jsp/app/login";
            }
        } else {
            model.addAttribute("info", "原密码输入不正确!");
        }
        return "jsp/app/user_password";
    }
}
