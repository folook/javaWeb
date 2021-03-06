<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <title>帖子详情</title>
</head>
<body>

    <h1>${topic.title}</h1>
    <p>浏览次数：${topic.browseNum}</p> <p>回复次数：${topic.replyNum}</p>
    <h3>创建时间：${(topic.createdTime*1000)?number_to_datetime?string('yyyy-MM-dd HH:mm:ss')}  ||  更新时间：${(topic.updatedTime*1000)?number_to_datetime?string('yyyy-MM-dd HH:mm:ss')} </h3>
    <span>创建者：${topicOwner.username}</span>
    <p>${topic.content}</p>
<br>
    <br>
    <br>
    <br>
    <span>评论区</span>
    <#list comments as c>
        <div>
<#--            回帖用户id：${commentOwner.username}-->
            回帖用户名：${c.commentOwner.username}
            回帖用户id：${c.userId}
            评论 id：${c.id}
            评论内容：${c.content}|
            评论时间：${(c.createdTime*1000)?number_to_datetime?string('yyyy-MM-dd HH:mm:ss')}
            修改时间：${(c.updatedTime*1000)?number_to_datetime?string('yyyy-MM-dd HH:mm:ss')}
            <a href="/topic/comment/edit?id=${c.id}">编辑</a>
            <a href="/topic/comment/delete?id=${c.id}">删除</a>
        </div>
    </#list>

<#--            <div>-->
<#--                &lt;#&ndash;           ${comment.content?default("")}| ${commentOwner.username?default("")}&ndash;&gt;-->
<#--                回帖用户：${commentOwner.username}-->
<#--                评论 id：${commentOwner.id}-->
<#--                评论内容：${comment.content}-->
<#--                评论时间：${(comment.createdTime*1000)?number_to_datetime?string('yyyy-MM-dd HH:mm:ss')}-->
<#--                修改时间：${(comment.updatedTime*1000)?number_to_datetime?string('yyyy-MM-dd HH:mm:ss')}-->
<#--                <a href="/topic/comment/edit?id=${commentOwner.id}">编辑</a>-->
<#--                <a href="/topic/comment/delete?id=${commentOwner.id}">删除</a>-->
<#--            </div>-->


    <span>回复区</span>
    <form action="/topic/comment/add" method="POST">
        <input type="text" name="topicId" value="${topic.id}" hidden>
        <br>
        <input type="text" name="topicComment" placeholder="请输入回复内容">
        <br>
        <button type="submit">添加评论</button>
    </form>
</body>
</html>
