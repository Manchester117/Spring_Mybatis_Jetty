<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="d" uri="http://displaytag.sf.net" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>主页</title>
    <link rel="stylesheet" type="text/css" href="../../../resources/bootstrap/dist/css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="../../../resources/css/dashboard.css"/>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script type="text/javascript" src="../../../resources/js/html5shiv.min.js"></script>
    <script type="text/javascript" src="../../../resources/js/respond.min.js"></script>
    <![endif]-->
</head>
<body>

<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <span class="navbar-brand logo"><a href="<c:url value="/user_info/getUserList"/>">SpringMVC + Mybatis + Jetty</a></span>
        </div>
        <div class="navbar-collapse collapse">
            <a class="navbar-brand navbar-right" href="<c:url value="/jsp/admin/login.jsp"/>">退出</a>
            <span class="navbar-brand navbar-right">管理员</span>
        </div>
    </div>
</nav>


<div class="container-fluid">
    <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
            <h4>菜单栏</h4>
            <ul class="nav nav-sidebar">
                <li><a href="<c:url value="/user_info/getUserList"/>">用户管理</a></li>
                <li><a href="#">景区管理</a></li>
            </ul>
        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
            <h2 class="sub-header">景区管理</h2>
            <form action="<c:url value="/view_info/getViewList"/>" method="post" class="form-inline">
                <div class="form-group">
                    <label>景区名称</label>
                    <input type="text" name="viewName" class="form-control">
                </div>
                <button type="submit" class="btn btn-default" >搜索</button>
                <button type="button" class="btn btn-primary" onclick="window.location.href='/jsp/admin/view_info/view_add.jsp'">添加</button>
            </form>

            <table class="table table-striped">
                <th>景区编号</th>
                <th>景区名称</th>
                <th>景区图片</th>
                <th>创建时间</th>
                <th>操作</th>
                <c:forEach items="${list}" var="view">
                    <tr>
                        <td>${view.viewId}</td>
                        <td>${view.viewName}</td>
                        <%--如果要访问图片则需要使用<c:url value="/">标签来设定图片的url--%>
                        <td><img alt="" src="<c:url value="/upload/${view.viewPhoto}"/>" width="50" height="50"/></td>
                        <td><fmt:formatDate value="${view.viewTime}" type="both"/></td>
                        <td>
                            <a href="<c:url value="/view_info/update_page?viewId=${view.viewId}"/>">修改</a>
                            <%-- 使用JS的方式避免重复提交--%>
                            <a href="javascript:window.location.href='/view_info/delete?viewId=${view.viewId}'">删除</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>

            <!--分页-->
            <ul class="pagination pull-right">
                <li class="active"><a href="#">&laquo;</a></li>
                <li><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li><a href="#">&raquo;</a></li>
            </ul>
        </div>
    </div>
</div>

<script src="../../../resources/js/jquery.min.js"></script>
<script src="../../../resources/bootstrap/dist/js/bootstrap.min.js"></script>
</body>
</html>
