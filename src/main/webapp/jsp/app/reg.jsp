<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>用户注册</title>
    <meta name="viewport" content="width-device-width, initial-scale=1">
    <link rel="stylesheet" href="../../resources/css/jquery.mobile-1.4.5.min.css"/>
    <script src="../../resources/js/jquery-1.11.1.min.js"></script>
    <script src="../../resources/js/jquery.mobile-1.4.5.min.js"></script>
</head>
<body>
<div data-role="page">
    <div data-role="header" data-theme="b">
        <a href="login.jsp" data-ajax="false" data-role="button">返回登录</a>
        <h1>顶部工具栏</h1>
    </div>
    <div data-role="content">
        <form action="<c:url value="/app/reg"/>" method="post" style="padding: 10px 20px;">
            <label for="userNumber">账号:</label>
            <input type="text" name="userNumber" id="userNumber" placeholder="请输入账号"/>
            <label for="userPw">密码:</label>
            <input type="text" name="userPw" id="userPw" placeholder="请输入密码"/>
            <label for="userName">姓名:</label>
            <input type="text" name="userName" id="userName" placeholder="请输入姓名"/>
            <input type="submit" value="免费注册" data-theme="b"/>
        </form>
    </div>
    <div data-role="footer" data-theme="b" data-position="fixed">
        <h1>底部工具栏</h1>
    </div>
</div>
</body>
</html>
