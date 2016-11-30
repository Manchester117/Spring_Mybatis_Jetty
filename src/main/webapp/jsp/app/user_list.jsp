<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>用户菜单</title>
    <meta name="viewport" content="width-device-width, initial-scale=1">
    <link rel="stylesheet" href="../../resources/css/jquery.mobile-1.4.5.min.css"/>
    <script src="../../resources/js/jquery-1.11.1.min.js"></script>
    <script src="../../resources/js/jquery.mobile-1.4.5.min.js"></script>
</head>
<body>
    <div data-role="header" data-theme="b">
        <a href="<c:url value="/jsp/app/login.jsp"/>" data-role="button" data-ajax="false">退出登录</a>
        <h1>个人信息</h1>
    </div>
    <div data-role="content">
        <ul data-role="listview">
            <li>
                <a href="user_info.jsp">
                    <img alt="" src="" class="ui-li-icon">
                    个人信息查看
                </a>
            </li>
            <li>
                <a href="user_password.jsp">
                    <img alt="" src="" class="ui-li-icon">
                    个人密码修改
                </a>
            </li>
            <li>
                <a href="baidu_map.jsp">
                    <img alt="" src="" class="ui-li-icon">
                    百度地图
                </a>
            </li>
            <li>
                <a href="http://tianqi.2345.com/beijing/54511.htm">
                    <img alt="" src="" class="ui-li-icon">
                    天气预报
                </a>
            </li>
        </ul>
    </div>
    <div data-role="footer" data-theme="b" data-position="fixed">
        <div data-role="navbar">
            <ul>
                <li><a href="<c:url value="/app/getViewList"/>" data-ajax="false">景点列表</a></li>
                <li><a href="#" data-ajax="false" class="ui-btn-active">个人信息</a></li>
            </ul>
        </div>
    </div>
</body>
</html>
