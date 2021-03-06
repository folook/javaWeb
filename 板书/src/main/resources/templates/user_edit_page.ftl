<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <title>修改 用户信息 的页面</title>
</head>
<body>
<h1>修改 用户名信息</h1>
<form action="/user/update" method="post">
    <input name="id" placeholder="id" value="${currentUser.id}" hidden>
    <br>
    <span>用户名</span>
    <input name="username" placeholder="username" value="${currentUser.username}">
    <br>

    <span>头像</span>
    <input name="avatar" placeholder="avatar" value="${currentUser.avatar}">
    <span>贴出图片完整链接</span>
    <br>
    <button type="submit">提交修改</button>
</form>
</body>
</html>