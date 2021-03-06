<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <title>修改 用户密码 的页面</title>
</head>
<body>
<h1>修改 用户名密码</h1>
<form action="/mail/reset/update" method="post">
<#--<form action="/mail/reset/update" method="post">-->

    <span>用户密码</span>
    <input name="password" placeholder="password" value="${currentUser.password}">
    <br>
    <span>用户token</span>
    <input name="token" placeholder="tokrn" value="${token}">
    <br>

    <button type="submit">提交密码修改</button>
</form>
</body>
</html>