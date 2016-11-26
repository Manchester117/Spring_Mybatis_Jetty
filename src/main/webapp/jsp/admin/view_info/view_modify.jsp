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
    <title>用户添加</title>
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
            <a class="navbar-brand navbar-right" href="../login.jsp">退出</a>
            <span class="navbar-brand navbar-right">管理员</span>
        </div>
    </div>
</nav>


<div class="container-fluid">
    <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
            <h5>NavBar_One</h5>
            <ul class="nav nav-sidebar">
                <%--<li><a href="#">Overview <span class="sr-only">(current)</span></a></li>--%>
                <li><a href="../user_info/user_list.jsp">用户管理</a></li>
                <li><a href="view_list.jsp">景区管理</a></li>
            </ul>
        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
            <h2 class="sub-header">Add Or Edit</h2>

            <form class="form-horizontal">
                <div class="form-group">
                    <label class="col-sm-2 control-label">input_text1</label>
                    <div class="col-sm-10">
                        <input type="email" class="form-control">
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label">input_text2</label>
                    <div class="col-sm-10">
                        <input type="password" class="form-control">
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label">checkbox</label>
                    <div class="col-sm-10">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" value="">
                                Option one
                            </label>
                        </div>
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" value="">
                                Option two
                            </label>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label">radio</label>
                    <div class="col-sm-10">
                        <div class="radio">
                            <label>
                                <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked>
                                Option1
                            </label>
                        </div>
                        <div class="radio">
                            <label>
                                <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
                                Option2
                            </label>
                        </div>
                        <div class="radio">
                            <label>
                                <input type="radio" name="optionsRadios" id="optionsRadios3" value="option3">
                                Option3
                            </label>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label">select</label>
                    <div class="col-sm-10">
                        <select class="form-control">
                            <option>1</option>
                            <option>2</option>
                            <option>3</option>
                            <option>4</option>
                            <option>5</option>
                        </select>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label">textarea</label>
                    <div class="col-sm-10">
                        <textarea class="form-control" rows="5"></textarea>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" class="btn btn-default">提交</button>
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
