<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<meta charset="UTF-8">
<title>baidu_map</title>
<meta name="viewport" content="width-device-width, initial-scale=1">
<link rel="stylesheet" href="../../resources/css/jquery.mobile-1.4.5.min.css"/>
<script src="../../resources/js/jquery-1.11.1.min.js"></script>
<script src="../../resources/js/jquery.mobile-1.4.5.min.js"></script>
<script type="text/javascript" src="http://api.map.baidu.com/api?v=1.2"></script>
<script type="text/javascript">
    function initialize() {
        var mp = new BMap.Map('baiduMap');
        mp.addControl(new BMap.NavigationControl());
        mp.addControl(new BMap.ScaleControl());
        mp.addControl(new BMap.OverviewMapControl());
        mp.addControl(new BMap.MapTypeControl());
        mp.setCurrentCity("北京");

        var point = new BMap.Point(116.403674, 39.91414);
        mp.centerAndZoom(point, 11);

        var marker = new BMap.Marker(point);
        mp.addOverlay(marker);
    }

    function loadScript() {
        var script = document.createElement("script");
        script.src = "http://api.map.baidu.com/api?v=1.2&callback=initialize";
        document.body.appendChild(script);
    }
    window.onload = loadScript;
</script>
<body>
<div data-role="header" data-theme="b">
    <a href="<c:url value="/jsp/app/user_list.jsp"/>" data-role="button" data-ajax="false">返回上一级</a>
    <h1>查看地图</h1>
</div>
<div data-role="content">
    <div data-role="content" style="width: 320px;height: 555px" id="baiduMap"></div>
</div>
<div data-role="footer" data-theme="b" data-position="fixed">
    <div data-role="navbar">
        <ul>
            <li><a href="<c:url value="/app/getViewList"/>" data-ajax="false">景点列表</a></li>
            <li><a href="<c:url value="/jsp/app/user_list.jsp"/>" data-ajax="false" class="ui-btn-active">个人信息</a></li>
        </ul>
    </div>
</div>
<script type="text/javascript" src="http://api.map.baidu.com/api?v=1.2"></script>
<script type="text/javascript">
    function initialize() {
        var mp = new BMap.Map('baiduMap');
        mp.addControl(new BMap.NavigationControl());
        mp.addControl(new BMap.ScaleControl());
        mp.addControl(new BMap.OverviewMapControl());
        mp.addControl(new BMap.MapTypeControl());
        mp.setCurrentCity("北京");

        var point = new BMap.Point(116.403674, 39.91414);
        mp.centerAndZoom(point, 11);

        var marker = new BMap.Marker(point);
        mp.addOverlay(marker);
    }

    function loadScript() {
        var script = document.createElement("script");
        script.src = "http://api.map.baidu.com/api?v=1.2&callback=initialize";
        document.body.appendChild(script);
    }
    window.onload = loadScript;
</script>
</body>
</html>
