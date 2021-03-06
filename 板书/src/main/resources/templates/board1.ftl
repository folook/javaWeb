<!DOCTYPE HTML>
<html>
<head>
    <title>板块 1</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
</head>
<body>
<a href='/topic_css'>主版</a>

<span>欢迎来到${board.name}</span>
<div>
    <#list boardTopic as t>
        <h3>
            <a href="/topic/detail/${t.id}">${t.id}: ${t.title}</a>
        </h3>
        <a href="/topic_css/edit?id=${t.id}">编辑</a>
        <a href="/topic_css/delete?id=${t.id}">删除</a>
    </#list>
</div>
<form action="/topic_css/add" method="POST">
    <input type="text" name="boardId" value="${board.id}" hidden>
    <br>
    <input type="text" name="title" placeholder="请输入帖子名字">
    <br>
    <input type="text" name="content" placeholder="请输入帖子内容">
    <br>
    <button type="submit">添加</button>
</form>
</body>
</html>