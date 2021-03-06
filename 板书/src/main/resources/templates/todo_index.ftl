<!DOCTYPE HTML>
<html>
<head>
    <title>ssm todo</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
</head>
<body>
<#--<img width="100%" height="100%" src="todo.png" style="position:absolute; left:0; top:0; z-index:-1;"/>-->
<a href='/index'>HOME</a>
<form action="/todo/add" method="POST">
    <input type="text" name="content" placeholder="请输入todo">
    <br>
    <button type="submit">添加</button>
</form>

<div>

    <#list todos as t>
    <h3>${t.id} : ${t.content}</h3>
    <a href="/todo/edit?id=${t.id}">编辑</a>
    <a href="/todo/delete?id=${t.id}">删除</a>
</#list>
</div>
</body>
</html>