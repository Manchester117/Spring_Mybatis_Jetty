<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>用户登录</title>
    <meta name="viewport" content="width-device-width, initial-scale=1">
    <link rel="stylesheet" href="../../resources/css/jquery.mobile-1.4.5.min.css"/>
    <script src="../../resources/js/jquery-1.11.1.min.js"></script>
    <script src="../../resources/js/jquery.mobile-1.4.5.min.js"></script>
</head>
<body>
<div data-role="page">
    <div data-role="header" data-theme="b">
        <h1>顶部工具栏</h1>
    </div>
    <div data-role="content">
        <form action="<c:url value="/app/login"/>" method="post" style="padding: 10px 20px;">
            <h3 align="center">
                <img src="../../resources/img/logo.jpg" height="320px">
            </h3>
            <div align="center" style="color: red;">${info}</div>
            <label for="un" class="ui-hidden-accessible">账号:</label>
            <input type="text" name="userNumber" id="un" placeholder="请输入账号" data-theme="b"/>
            <label for="pw" class="ui-hidden-accessible">密码:</label>
            <input type="password" name="userPw" id="pw" placeholder="请输入密码" data-theme="b"/>
            <div class="ui-grid-a">
                <div class="ui-block-a">
                    <button type="submit" data-theme="b">用户登录</button>
                </div>
                <div class="ui-block-b">
                    <a href="<c:url value="reg.jsp"/>" data-role="button" data-theme="b">免费注册</a>
                </div>
            </div>
        </form>
    </div>
    <div data-role="footer" data-theme="b" data-position="fixed">
        <h1>底部工具栏</h1>
    </div>
</div>
</body>
</html>
