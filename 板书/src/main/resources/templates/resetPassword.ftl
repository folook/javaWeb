<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <title>修改 用户信息 的页面</title>
</head>
<body>
<h1>修改 用户名信息</h1>
<form action="/mail/reset/send" method="post">
<#--    <input name="id" placeholder="id" value="${currentUser.id}" hidden>-->
    <br>
    <span>用户名</span>
    <input name="username" placeholder="username" >
    <br>
    <button type="submit">请给我发送邮件</button>
</form>
</body>
</html>