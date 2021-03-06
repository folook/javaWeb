<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>index</title>
    <link rel="stylesheet" href="index.css">
    <style type="text/css">
        .zihuatanejo{
            float:left
        }   
    </style>

</head>
<body>
<#--<br>-->
<#--HOME PAGE-->
<#--<br>-->
<div class='navbar'>
    <div class='navbar-inner'>
        <div class='container'>
            <h4 class='zihuatanejo'><a href='/zihuatanejo'>你好啊${currentUser.username} ,欢迎来到zihuatanejo^_^</a></h4>
            <ul class='nav pull-right'>
                <li><a href='/index'>HOME</a></li>
<#--                <li><a href="/register">注册</a></li>-->
<#--                <li><a href="/login">登录</a></li>-->
                <li><a href='/topic_css'>puhu试验田</a></li>
                <li><a href='/admin'>私密吃瓜所</a></li>
                <li><a href='/weibo'>bowei种植地</a></li>
                <li><a href='/todo'>todo制造机</a></li>
                <li><a href='/ajax'>ajax训练场</a></li>
                <li><a href='/sicp'>SICP斗技会</a></li>
                <li><a href='/question'>提问模仿器</a></li>
                <li><a href="/user/profile?id=${currentUser.id}">个人信息管理所</a></li>
<#--                <li><a >个人信息管理所</a></li>-->
            </ul>
        </div>
    </div>
</div>

<#--    <img src="/doge.gif"/>-->
<#--    <img src="/doge1.jpg"/>-->
<#--    <img src="/doge2.gif"/>-->
</body>

</html>
