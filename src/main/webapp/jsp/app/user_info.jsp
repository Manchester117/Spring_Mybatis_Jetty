<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>个人信息</title>
    <meta name="viewport" content="width-device-width, initial-scale=1">
    <link rel="stylesheet" href="../../resources/css/jquery.mobile-1.4.5.min.css"/>
    <script src="../../resources/js/jquery-1.11.1.min.js"></script>
    <script src="../../resources/js/jquery.mobile-1.4.5.min.js"></script>
</head>
<body>
<div data-role="header" data-theme="b">
    <a href="<c:url value="/jsp/app/user_list.jsp"/>" data-role="button" data-ajax="false">返回上一级</a>
    <h1>用户详情</h1>
</div>
<div data-role="content">
    <div class="ui-grid-a">
        <div class="ui-block-a" style="width: 20%">账号:</div>
        <%--可以直接从Session中获得用户信息--%>
        <div class="ui-block-b" style="width: 80%">${userInfo.userNumber}</div>
    </div>
    <div class="ui-grid-a">
        <div class="ui-block-a" style="width: 20%">姓名:</div>
        <div class="ui-block-b" style="width: 80%">${userInfo.userName}</div>
    </div>
    <div class="ui-grid-a">
        <div class="ui-block-a" style="width: 20%">类别:</div>
        <div class="ui-block-b" style="width: 80%">${userInfo.userType}</div>
    </div>
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
