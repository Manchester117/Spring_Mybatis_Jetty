<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>景区详情</title>
    <meta name="viewport" content="width-device-width, initial-scale=1">
    <link rel="stylesheet" href="../../resources/css/jquery.mobile-1.4.5.min.css"/>
    <script src="../../resources/js/jquery-1.11.1.min.js"></script>
    <script src="../../resources/js/jquery.mobile-1.4.5.min.js"></script>
</head>
<body>
<div data-role="header" data-theme="b">
    <a href="<c:url value="/app/getViewList"/>" data-role="button" data-ajax="false">返回上一级</a>
    <h1>详情页</h1>
</div>
<div data-role="content">
    <div class="ui-grid-a">
        <div class="ui-block-a" style="width: 20%">景区名称</div>
        <div class="ui-block-b" style="width: 80%">${viewInfo.viewName}</div>
    </div>
    <div class="ui-grid-a">
        <div class="ui-block-a" style="width: 20%">发布时间</div>
        <div class="ui-block-b" style="width: 80%"><fmt:formatDate value="${viewInfo.viewTime}" type="both"/></div>
    </div>
    <div class="ui-grid-a">
        <div class="ui-block-a" style="width: 20%">发布人</div>
        <div class="ui-block-b" style="width: 80%">${viewInfo.userNumber}</div>
    </div>
    <div class="ui-grid-a">
        <div class="ui-block-a" style="width: 20%">景区图片</div>
        <div class="ui-block-b" style="width: 80%">
            <img alt="" src="/upload/${viewInfo.viewPhoto}" width="100%" height="80%"/>
        </div>
    </div>
    <div class="ui-grid-a">
        <div class="ui-block-a" style="width: 20%">景区详情</div>
        <div class="ui-block-b" style="width: 80%">${viewInfo.viewDesc}</div>
    </div>
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
