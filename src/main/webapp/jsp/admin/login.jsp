<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/11/25
  Time: 11:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>登录</title>
    <link rel="stylesheet" href="../../resources/bootstrap/dist/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="../../resources/css/login.css"/>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="../../resources/js/html5shiv.min.js"></script>
    <script src="../../resources/js/respond.min.js"></script>
    <![endif]-->
</head>
<body>

<div class="container">
    <form action="<c:url value="/user_info/login"/>" method="post" class="form-signin">
        <h2 class="form-signin-heading">卓聘API容器内管系统</h2>
        <h5 class="form-signin-heading" align="center">${info == null ? "请输入账号和密码" : info}</h5>
        <label for="userPw" class="sr-only">用户名</label>
        <input type="text" id="userNumber" name="userNumber" class="form-control" placeholder="用户名" autofocus=""/>
        <label for="userPw" class="sr-only">密码</label>
        <input type="password" id="userPw" name="userPw" class="form-control" placeholder="密码">
        <!--<div class="checkbox">-->
        <!--<label>-->
        <!--<input type="checkbox" value="remember-me"> Remember me-->
        <!--</label>-->
        <!--</div>-->
        <button class="btn btn-lg btn-primary btn-block" type="submit">登录</button>
    </form>
</div>
<script src="../../resources/js/jquery.min.js"></script>
<script src="../../resources/bootstrap/dist/js/bootstrap.min.js"></script>
</body>
</html>
