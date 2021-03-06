<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <title>修改评论</title>
</head>
<body>
    <h1>修改 评论</h1>
    <form action="/topic/comment/update" method="post">
        <input name="id" placeholder="id" value="${topicComment.id}" hidden>
        <input name="content" placeholder="请输入修改后的评论"  value="${topicComment.content}">
        <br>
        <button type="submit">提交修改</button>
    </form>
</body>
</html>
