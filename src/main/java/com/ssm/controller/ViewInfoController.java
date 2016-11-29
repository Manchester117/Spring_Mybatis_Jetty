package com.ssm.controller;

import com.ssm.po.UserInfo;
import com.ssm.po.ViewInfo;
import com.ssm.service.ViewInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.util.Date;
import java.util.List;
import java.util.UUID;

/**
 * Created by Administrator on 2016/11/28.
 */
@Controller
@RequestMapping("/view_info")
public class ViewInfoController {

    @Resource(name = "viewInfoServiceImpl")
    private ViewInfoService viewInfoService;

    @RequestMapping(value = "/getViewList")
    public String getViewList(ViewInfo viewInfo, Model model) {
        List<ViewInfo> viewInfoList = viewInfoService.getViewList(viewInfo);

        model.addAttribute("list", viewInfoList);
        return "jsp/admin/view_info/view_list";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String add(@RequestParam(value="file", required = false)MultipartFile file,
                      ViewInfo viewInfo, Model model, HttpSession session) {
        // 上传文件的地址
        String path = session.getServletContext().getRealPath("upload");
        System.out.println(path);

        // 获取上传后的文件名称
        String fileName = UUID.randomUUID() + file.getOriginalFilename();
        System.out.println(fileName);

        // 创建文件上传路径
        File targetFile = new File(path, fileName);
        if (!targetFile.exists()) {
            targetFile.mkdirs();
        }

        // 设置景区信息
        UserInfo user = (UserInfo)session.getAttribute("userInfo");
        if (viewInfo != null) {
            viewInfo.setUserNumber(user.getUserNumber());
            viewInfo.setViewTime(new Date());
            viewInfo.setViewPhoto(fileName);
        }

        // 进行存储
        try {
            file.transferTo(targetFile);
            boolean mark = viewInfoService.add(viewInfo);
            if (mark) {
                model.addAttribute("info", "添加景区成功");
            } else {
                model.addAttribute("info", "添加景区失败");
            }
        } catch (Exception e) {
            e.printStackTrace();
            model.addAttribute("info", "添加景区失败");
        }
        System.out.println(viewInfo);

        return "jsp/admin/view_info/view_info";
    }

    @RequestMapping(value = "/update_page")
    public String update_page(Integer viewId, Model model) {
        model.addAttribute("viewInfo", viewInfoService.getViewInfo(viewId));
        return "jsp/admin/view_info/view_update";
    }

    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public String update(@RequestParam(value="file", required = false)MultipartFile file,
                      ViewInfo viewInfo, Model model, HttpSession session) {
        // 上传文件的地址
        String path = session.getServletContext().getRealPath("upload");
        System.out.println(path);

        // 获取上传后的文件名称
        String fileName = UUID.randomUUID() + file.getOriginalFilename();
        System.out.println(fileName);

        // 设置景区信息
        if (viewInfo != null && file.getOriginalFilename() != null && !file.getOriginalFilename().equals("")) {
            viewInfo.setViewPhoto(fileName);
            // 创建文件上传路径
            File targetFile = new File(path, fileName);
            if (!targetFile.exists()) {
                targetFile.mkdirs();
            }
            // 进行存储
            try {
                file.transferTo(targetFile);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        boolean mark = viewInfoService.update(viewInfo);
        if (mark) {
            model.addAttribute("info", "修改景区成功");
        } else {
            model.addAttribute("info", "修改景区失败");
        }

        System.out.println(viewInfo);

        return "jsp/admin/view_info/view_info";
    }

    @RequestMapping(value = "delete")
    public String delete(Integer viewId, Model model) {
        boolean mark = viewInfoService.delete(viewId);
        if (mark) {
            model.addAttribute("info", "删除景区成功");
        } else {
            model.addAttribute("info", "删除景区失败");
        }
        return "jsp/admin/view_info/view_info";
    }
}
