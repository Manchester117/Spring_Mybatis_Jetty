<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>修改密码</title>
    <meta name="viewport" content="width-device-width, initial-scale=1">
    <link rel="stylesheet" href="../../resources/css/jquery.mobile-1.4.5.min.css"/>
    <script src="../../resources/js/jquery-1.11.1.min.js"></script>
    <script src="../../resources/js/jquery.mobile-1.4.5.min.js"></script>
</head>
<body>
<div data-role="header" data-theme="b">
    <a href="<c:url value="/jsp/app/user_list.jsp"/>" data-role="button" data-ajax="false">返回上一级</a>
    <h1>修改密码</h1>
</div>
<div data-role="content">
    <form action="<c:url value="/app/updatePassword"/>" method="post" style="padding: 10px 20px;">
        <%--需要用账号和密码拼凑成一个UserInfo对象,并传递到Controller层--%>
        <input name="userNumber" type="hidden" value="${userInfo.userNumber}"/>
        <label for="passWord">原密码:</label>
        <input type="text" name="passWord" id="passWord" placeholder="请输入原密码"/>
        <label for="userPw">新密码:</label>
        <input type="text" name="userPw" id="userPw" placeholder="请输入新密码"/>
        <div align="center" style="color: red;">${info}</div>
        <input type="submit" value="修改" data-theme="b"/>
    </form>
</div>
<div data-role="footer" data-theme="b" data-position="fixed">
    <div data-role="navbar">
        <ul>
            <li><a href="<c:url value="/app/getViewList"/>" data-ajax="false">景点列表</a></li>
            <li><a href="<c:url value="/jsp/app/user_list.jsp"/>" data-ajax="false" class="ui-btn-active">个人信息</a></li>
        </ul>
    </div>
</div>
</body>
</html>
