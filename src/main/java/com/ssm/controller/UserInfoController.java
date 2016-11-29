package com.ssm.controller;

import com.ssm.po.UserInfo;
import com.ssm.service.UserInfoService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by Administrator on 2016/11/24.
 */

@Controller(value = "userInfoContoller")
@RequestMapping("/user_info")
public class UserInfoController {
    @Resource(name = "userInfoServiceImpl")
    private UserInfoService userInfoService;

    @RequestMapping("/getUserList")
    public String getUserList(UserInfo user, Model model) {
        List<UserInfo> userInfolist = userInfoService.getUserList(user);
        model.addAttribute("list", userInfolist);

        return "jsp/admin/user_info/user_list";
    }

    @RequestMapping("/add")
    public String add(UserInfo user, Model model) {
        boolean mark = false;
        try {
            mark = userInfoService.add(user);
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (mark) {
            model.addAttribute("info", "操作成功");
        } else {
            model.addAttribute("info", "操作失败");
        }

        return "jsp/admin/user_info/user_info";
    }

    @RequestMapping("/update_page")
    public String update_page(String userNumber, Model model) {
        UserInfo user = userInfoService.getUser(userNumber);
        model.addAttribute("user", user);

        return "jsp/admin/user_info/user_update";
    }

    @RequestMapping("/update")
    public String update(UserInfo user, Model model) {
        boolean mark = false;

        try {
            mark = userInfoService.update(user);
        } catch (Exception e) {
            e.printStackTrace();
        }

        if (mark) {
            model.addAttribute("info", "操作成功");
        } else {
            model.addAttribute("info", "操作失败");
        }

        return "jsp/admin/user_info/user_info";
    }

    @RequestMapping("/delete")
    public String delete(String userNumber, Model model) {
        boolean mark = false;

        try {
            mark = userInfoService.delete(userNumber);
        } catch (Exception e) {
            e.printStackTrace();
        }

        if (mark) {
            model.addAttribute("info", "操作成功");
        } else {
            model.addAttribute("info", "操作失败");
        }

        return "jsp/admin/user_info/user_info";
    }

    @RequestMapping("/login")
    public String login(String userNumber, String userPw, Model model, HttpSession session) {
        if (userNumber != null && !userNumber.equals("")) {
            UserInfo user = userInfoService.getUser(userNumber);
            if (user != null && user.getUserPw().equals(userPw)) {
                session.setAttribute("userInfo", user);
                List<UserInfo> list = userInfoService.getUserList(null);
                model.addAttribute("list", list);
                return "jsp/admin/user_info/user_list";
            } else {
                model.addAttribute("info", "账号或密码错误");
            }
        } else {
            model.addAttribute("info", "账号密码不能为空");
        }

        return "jsp/admin/login";
    }
}
