<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>登录页面</title>
</head>
<body>

<a href='/index'>HOME</a>
    <h1>登录后可使用网站全部功能</h1>
    <form action="/user/login" method="post">
        <input type="text" name="username" placeholder="请输入用户名">
        <br>
        <input type="text" name="password" placeholder="请输入密码">
        <br>
        <button type="submit">登录</button>
    </form>
    <h3>欢迎 ${currentUser.username}</h3></body>
</html>