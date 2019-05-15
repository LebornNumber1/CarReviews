<%--
  Created by IntelliJ IDEA.
  User: WuYou
  Date: 2019/4/15
  Time: 11:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>车评网导航界面</title>
    <link rel="stylesheet" href="css/daohang.css">
</head>
<body>
<div class="top">
    <div class="top_in">
        <div class="top_left">
            <h1><a href="${pageContext.request.contextPath}/loginAction_review.action" title="车评网"></a></h1>
        </div>
        <div class="top_right">
            <ul class="top_nav">
                <li><a href="${pageContext.request.contextPath}/loginAction_review.action">车评首页</a></li>
                <li><a href="${pageContext.request.contextPath}/loginAction_play.action">2048</a></li>
            </ul>
            <ul class="top_login">
                <li><a href="${pageContext.request.contextPath}/loginAction_login1.action">登录</a></li>
                <li><a href="${pageContext.request.contextPath}/loginAction_reg1.action">注册</a></li>
            </ul>
        </div>
    </div>
</div>
<div class="content">
    <img src="image/content.jpg" alt="">
</div>
<div class="bottom">
    <p>车评网，最专业的车评网站</p>
</div>
<div class="bbt">
    <img src="image/bottom1.jpg" alt="">
</div>
</body>
</html>
