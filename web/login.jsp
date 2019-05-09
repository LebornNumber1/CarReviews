<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>登录界面</title>
    <link href="css/style1.css" type="text/css" rel="stylesheet">
</head>
<body>
<div class="bgbox">
    <h2 class="head" style="text-align: center;">用户登录
        <span style="color: red; font-size: 20px;"><s:actionerror/></span>
    </h2>
    <hr>
    <form action="${pageContext.request.contextPath}/loginAction_login.action"
          method="post">
        <div class="footer">
            <img src="image/smallcar1.gif">
            <div class="foot_content">
                <div class="foot_contentZH">
                    <lable>账号:</lable>
                    <input type="text" placeholder="请输入账号" id="log" name="username">
                </div>
                <div class="foot_contentPW">
                    <lable>密码:</lable>
                    <input type="password" placeholder="请输入密码" id="pw" name="password">
                </div>
                <div>
                    <input type="submit" value="登录" class="submit">
                </div>
            </div>
        </div>
    </form>
    <div class="bg_ft">
        <button><a href="${pageContext.request.contextPath}/loginAction_reg1.action">注册</a></button>
    </div>
</div>
</body>
</html>