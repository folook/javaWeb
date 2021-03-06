<!DOCTYPE HTML>
<html>
<head>
    <title>ssm todo</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
</head>
<body>
<#--<img width="100%" height="100%" src="topic.png" style="position:absolute; left:0; top:0; z-index:-1;"/>-->

<a href='/index'>HOME</a>
<a href='/topic/board/1'>板块 1</a>
<a href='/topic/board/2'>板块 2</a>
<a href='/topic/board/3'>板块 3</a>

<div>

    <#list topics as t>
        <h3>
            <a href="/topic/detail/${t.id}">${t.id}: ${t.title}</a>
        </h3>
    <a href="/topic_css/edit?id=${t.id}">编辑</a>
    <a href="/topic_css/delete?id=${t.id}">删除</a>
    </#list>
</div>



<#--<form action="/topic/add" method="POST">-->
<#--    <input type="text" name="title" placeholder="请输入帖子名字">-->
<#--    <br>-->
<#--    <input type="text" name="content" placeholder="请输入帖子内容">-->
<#--    <br>-->
<#--    <button type="submit">添加</button>-->
<#--</form>-->
</body>
</html>