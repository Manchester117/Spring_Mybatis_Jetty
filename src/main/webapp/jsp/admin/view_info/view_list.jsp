<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
            <span class="navbar-brand logo"><a href="../index.jsp">卓聘API容器内管系统</a></span>
        </div>
        <div class="navbar-collapse collapse">
            <a class="navbar-brand navbar-right" href="../login.jsp">退出</a>
            <span class="navbar-brand navbar-right">管理员</span>
        </div>
    </div>
</nav>


<div class="container-fluid">
    <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
            <h4>菜单栏</h4>
            <ul class="nav nav-sidebar">
                <li><a href="../user_info/user_list.jsp">用户管理</a></li>
                <li><a href="#">景区管理</a></li>
            </ul>
        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
            <h2 class="sub-header">景区管理</h2>

            <form class="form-inline">
                <div class="form-group">
                    <label>ID</label>
                    <input type="text" class="form-control">
                </div>
                <div class="form-group">
                    <label>name</label>
                    <input type="email" class="form-control">
                </div>

                <div class="form-group">
                    <label>Select</label>
                    <select class="form-control">
                        <option>option 1</option>
                        <option>option 2</option>
                        <option>option 3</option>
                        <option>option 4</option>
                        <option>option 5</option>
                    </select>
                </div>

                <button type="submit" class="btn btn-default">搜索</button>
            </form>

            <h3>
                <button type="button" class="btn btn-primary" onclick="window.location.href='view_add.jsp'">添加</button>
            </h3>
            <div class="table-responsive">
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th>ID</th>
                        <th>Header</th>
                        <th>Header</th>
                        <th>Header</th>
                        <th>Header</th>
                        <th>Header</th>
                        <th>操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>1,001</td>
                        <td><a href="#">Lorem</a></td>
                        <td>ipsum</td>
                        <td>dolor</td>
                        <td>sit</td>
                        <td>dolor</td>
                        <td><i class="glyphicon glyphicon-edit icons" title="修改"></i><i class="glyphicon glyphicon-remove icons" title="删除"></i></td>
                    </tr>
                    <tr>
                        <td>1,001</td>
                        <td><a href="#">Lorem</a></td>
                        <td>ipsum</td>
                        <td>dolor</td>
                        <td>sit</td>
                        <td>dolor</td>
                        <td><i class="glyphicon glyphicon-edit icons" title="修改"></i><i class="glyphicon glyphicon-remove icons" title="删除"></i></td>
                    </tr>
                    <tr>
                        <td>1,001</td>
                        <td><a href="#">Lorem</a></td>
                        <td>ipsum</td>
                        <td>dolor</td>
                        <td>sit</td>
                        <td>dolor</td>
                        <td><i class="glyphicon glyphicon-edit icons" title="修改"></i><i class="glyphicon glyphicon-remove icons" title="删除"></i></td>
                    </tr>
                    <tr>
                        <td>1,001</td>
                        <td><a href="#">Lorem</a></td>
                        <td>ipsum</td>
                        <td>dolor</td>
                        <td>sit</td>
                        <td>dolor</td>
                        <td><i class="glyphicon glyphicon-edit icons" title="修改"></i><i class="glyphicon glyphicon-remove icons" title="删除"></i></td>
                    </tr>
                    <tr>
                        <td>1,001</td>
                        <td><a href="#">Lorem</a></td>
                        <td>ipsum</td>
                        <td>dolor</td>
                        <td>sit</td>
                        <td>dolor</td>
                        <td><i class="glyphicon glyphicon-edit icons" title="修改"></i><i class="glyphicon glyphicon-remove icons" title="删除"></i></td>
                    </tr>
                    <tr>
                        <td>1,001</td>
                        <td><a href="#">Lorem</a></td>
                        <td>ipsum</td>
                        <td>dolor</td>
                        <td>sit</td>
                        <td>dolor</td>
                        <td><i class="glyphicon glyphicon-edit icons" title="修改"></i><i class="glyphicon glyphicon-remove icons" title="删除"></i></td>
                    </tr>
                    <tr>
                        <td>1,001</td>
                        <td><a href="#">Lorem</a></td>
                        <td>ipsum</td>
                        <td>dolor</td>
                        <td>sit</td>
                        <td>dolor</td>
                        <td><i class="glyphicon glyphicon-edit icons" title="修改"></i><i class="glyphicon glyphicon-remove icons" title="删除"></i></td>
                    </tr>
                    <tr>
                        <td>1,001</td>
                        <td><a href="#">Lorem</a></td>
                        <td>ipsum</td>
                        <td>dolor</td>
                        <td>sit</td>
                        <td>dolor</td>
                        <td><i class="glyphicon glyphicon-edit icons" title="修改"></i><i class="glyphicon glyphicon-remove icons" title="删除"></i></td>
                    </tr>
                    </tbody>
                </table>
            </div>

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
