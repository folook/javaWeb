<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <title>修改微博</title>
</head>
<body>
    <h1>修改 微博</h1>
    <form action="/weibo/update" method="post">
        <input name="id" placeholder="id" value="${weibo.id}">
        <input name="content" placeholder="content" value="${weibo.content}">
        <br>
        <button type="submit">提交修改</button>
    </form>
</body>
</html>
