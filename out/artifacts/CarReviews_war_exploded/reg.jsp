<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>注册界面</title>
    <link href="css/style2.css" type="text/css" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="bgbox">
    <h2 class="head">用户注册</h2>
    <span style="color: red; font-size: 20px;"><s:actionerror/></span>
    <hr>
    <div class="footer">
        <img src="image/smallcar1.gif">
        <div class="foot_content">
            <form action="${pageContext.request.contextPath}/loginAction_reg.action"
                  method="post">
                <div class="form-group">
                    <label>用户名</label>
                    <input type="text" value="${users.username}" class="form-control" name="username"
                           placeholder="请输入用户名">
                </div>
                <div class="form-group">
                    <label>密码</label>
                    <input type="password" class="form-control" placeholder="由数字或英文字符组成(6位-20位)" name="password">
                </div>
                <div class="form-group">
                    <label>确认密码</label>
                    <input type="password" class="form-control" name="passwordAgain" placeholder="由数字或英文字符组成(6位-20位)">
                </div>
                <div class="form-group">
                    <label>手机号码</label>
                    <input type="text" class="form-control" placeholder="请输入手机号码" name="phone">
                </div>
                <input type="submit" value="注册" id="ZC">
            </form>
            <br>
            <div class="form-group">
                <span>已有帐号？</span>
                <a href="${pageContext.request.contextPath}/loginAction_login.action"
                   style="color: #2b542c">马上登录</a>
            </div>
        </div>
    </div>
</div>
</body>
</html>