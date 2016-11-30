<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>景点列表</title>
    <meta name="viewport" content="width-device-width, initial-scale=1">
    <link rel="stylesheet" href="../../resources/css/jquery.mobile-1.4.5.min.css"/>
    <script src="../../resources/js/jquery-1.11.1.min.js"></script>
    <script src="../../resources/js/jquery.mobile-1.4.5.min.js"></script>
</head>
<body>
<div data-role="header" data-theme="b">
    <a href="<c:url value="/jsp/app/login.jsp"/>" data-role="button" data-ajax="false">退出登录</a>
    <h1>景点列表</h1>
</div>
<div data-role="content">
    <ul data-role="listview" data-filter="true" data-filter-placeholder="请输入景点名称">
        <c:forEach items="${viewList}" var="view">
            <li>
                <a href="<c:url value="/app/getViewInfo?viewId=${view.viewId}"/>" data-ajax="false">
                    <img alt="" src="<c:url value="/upload/${view.viewPhoto}"/>" width="200px" height="100px"/>
                    <h2>${view.viewName}</h2>
                    <p>${view.viewDesc}</p>
                </a>
            </li>
        </c:forEach>
    </ul>
</div>
<div data-role="footer" data-theme="b" data-position="fixed">
    <div data-role="navbar">
        <ul>
            <li><a href="<c:url value="/app/getViewList"/>" data-ajax="false" class="ui-btn-active">景点列表</a></li>
            <li><a href="<c:url value="/jsp/app/user_list.jsp"/>">个人信息</a></li>
        </ul>
    </div>
</div>
</body>
</html>
