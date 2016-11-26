<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="d" uri="http://displaytag.sf.net" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>用户管理</title>
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
                <li><a href="#">用户管理</a></li>
                <li><a href="/jsp/admin/view_info/view_list.jsp">景区管理</a></li>
            </ul>
        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
            <h2 class="sub-header">用户管理</h2>

            <form action="<c:url value="/user_info/getUserList"/>" method="post" class="form-inline">
                <div class="form-group">
                    <label>姓名:</label>
                    <input type="text" name="userName" class="form-control">
                </div>
                <div class="form-group">
                    <label>类别:</label>
                    <select name="userType" class="form-control">
                        <option value="">请选择</option>
                        <option value="管理员">管理员</option>
                        <option value="普通用户">普通用户</option>
                    </select>
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-default">搜索</button>
                    <button type="button" class="btn btn-primary" onclick="window.location.href='/jsp/admin/user_info/user_add.jsp'">添加</button>
                </div>
            </form>

            <div class="table-responsive" align="right">
                <d:table name="${list}" pagesize="10" requestURI="/user_info/getUserList" class="table table-striped">
                    <d:column property="userNumber" title="账号"/>
                    <d:column property="userPw" title="密码"/>
                    <d:column property="userName" title="姓名"/>
                    <d:column property="userType" title="类别"/>
                    <d:column paramId="userNumber" paramProperty="userNumber" value="修改" href="/user_info/update_page" title="修改"/>
                    <d:column paramId="userNumber" paramProperty="userNumber" value="删除" href="/user_info/delete" title="删除"/>
                </d:table>
            </div>
        </div>
    </div>
</div>

<script src="../../../resources/js/jquery.min.js"></script>
<script src="../../../resources/bootstrap/dist/js/bootstrap.min.js"></script>
</body>
</html>
