<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>注册页面</title>
</head>
<body>
<a href='/index'>HOME</a>
    <h1>隐藏注册入口</h1>
    <form action="/user/register" method="post">
        <input type="text" name="username" placeholder="请输入用户名">
        <br>
        <input type="text" name="password" placeholder="请输入密码">
        <br>
<#--        <button type="submit" disabled="disabled">注册</button>-->
        <button type="submit" >注册</button>

    </form>
<#--    <h3>${user.username}</h3>-->
</body>
</html>