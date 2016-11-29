<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/11/25
  Time: 11:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>景区添加</title>
    <link rel="stylesheet" href="../../../resources/bootstrap/dist/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="../../../resources/css/dashboard.css"/>
    <link ref="stylesheet" href="../../../resources/css/fileinput.css"/>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script type=text/javascript src="../../../resources/js/html5shiv.min.js"></script>
    <script type=text/javascript src="../../../resources/js/respond.min.js"></script>
    <script type=text/javascript src="../../../resources/js/fileinput.js"></script>
    <script type=text/javascript src="../../../resources/js/zh.js"></script>
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
                <%--<li><a href="#">Overview <span class="sr-only">(current)</span></a></li>--%>
                <li><a href="<c:url value="/user_info/getUserList"/>">用户管理</a></li>
                <li><a href="<c:url value="/view_info/getViewList"/>">景区管理</a></li>
            </ul>
        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
            <h2 class="sub-header">Add Or Edit</h2>

            <form action="<c:url value='/view_info/add'/>" method="post" enctype="multipart/form-data" class="form-horizontal">
                <div class="form-group">
                    <label class="col-sm-2 control-label">景区名称:</label>
                    <div class="col-sm-10">
                        <input type="text" name="viewName" class="form-control" placeholder="请输入景区名称">
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label">上传图片:</label>
                    <div class=col-sm-10">
                        <input name="file" type="file" class="file-preview-image">
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label">景区详情:</label>
                    <div class="col-sm-10">
                        <textarea class="form-control" name="viewDesc" rows="5" placeholder="请输入景区详情"></textarea>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" class="btn btn-primary">提交</button>
                        <button type="button" class="btn btn-default">重置</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

<script src="../../../resources/js/jquery.min.js"></script>
<script src="../../../resources/bootstrap/dist/js/bootstrap.min.js"></script>
</body>
</html>
