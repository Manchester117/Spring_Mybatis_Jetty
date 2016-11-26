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
    <title>用户修改</title>
    <link rel="stylesheet" href="../../../resources/bootstrap/dist/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="../../../resources/css/dashboard.css"/>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="../../../resources/js/html5shiv.min.js"></script>
    <script src="../../../resources/js/respond.min.js"></script>
    <![endif]-->
</head>
<body>

<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <span class="navbar-brand logo"><a href="../index.jsp">卓聘API容器内管系统</a></span>
        </div>
        <div class="navbar-collapse collapse">
            <a class="navbar-brand navbar-right" href="/jsp/admin/login.jsp">退出</a>
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
                <li><a href="user_list.jsp">用户管理</a></li>
                <li><a href="../view_info/view_list.jsp">景区管理</a></li>
            </ul>
        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
            <h2 class="sub-header">Add Or Edit</h2>

            <form action="<c:url value="/user_info/update"/>" method="post" class="form-horizontal">
                <div class="form-group">
                    <label class="col-sm-2 control-label">用户账号</label>
                    <div class="col-sm-10">
                        <input type="text" name="userNumber" class="form-control" value="${user.userNumber}" readonly="readonly">
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label">用户密码</label>
                    <div class="col-sm-10">
                        <input type="text" name="userPw" class="form-control" value="${user.userPw}">
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label">用户姓名</label>
                    <div class="col-sm-10">
                        <input type="text" name="userName" class="form-control" value="${user.userName}">
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label">用户类型</label>
                    <div class="col-sm-10">
                        <select name="userType" class="form-control">
                            <option value="管理员" value="${user.userType=='管理员'?'selected':''}">管理员</option>
                            <option value="普通用户" value="${user.userType=='普通用户'?'selected':''}">普通用户</option>
                        </select>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" class="btn btn-default">保存用户</button>
                        <button type="submit" class="btn btn-default">重置信息</button>
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
