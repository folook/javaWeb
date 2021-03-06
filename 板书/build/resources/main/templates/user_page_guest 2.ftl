<!DOCTYPE html>
<html>
<head>
    <!-- meta charset 指定了页面编码, 否则中文会乱码 -->
    <meta charset="utf-8">
    <!-- title 是浏览器显示的页面标题 -->
    <title>个人主页</title>
    <link rel="stylesheet" href="/index.css">
</head>
<body>
<!-- navbar -->
<div class='navbar'>
    <div class='navbar-inner'>
        <div class='container'>
            <ul class='nav pull-right'>
                <li><a href='/index'>HOME</a></li>
                <li><a href="/register">注册</a></li>
                <li><a href="/login">登录</a></li>
                <li><a href='/topic_css'>puhu试验田</a></li>
                <li><a href='/admin'>私密吃瓜所</a></li>
                <li><a href='/weibo'>bowei种植地</a></li>
                <li><a href='/todo'>todo制造机</a></li>
                <li><a href='/todo'>ajax训练场</a></li>
                <li><a href='/todo'>SICP斗技会</a></li>
                <li><a href='/question'>提问模仿器</a></li>
                <li><a href="/user/profile?id=${currentUser.id}">个人信息管理所</a></li>

            </ul>
        </div>
    </div>
</div>

<div id="sidebar">
    <div class="panel">
        <div class="header">
            <span class="col_fade">基本信息</span>
        </div>
        <div class="inner">
            <div class="user_card">
                <div>
                    <a class="user_avatar" href="/userInformation">
                        <img src="/doge1.jpg"/>
<#--                        <img src=${currentUser.avatar}/>-->
                    </a>
<#--                    <span class="user_name"><a class="dark" href="/user/edit?id=${currentUser.id}">${currentUser.username}</a></span>-->

                    <div class="board clearfix">
                        <div class="floor">
                            <span class="big">这是你的颜值: 爆表 </span>
                        </div>
                    </div>
                    <div class="space clearfix"></div>
                    <span class="signature">
        “

            知识可是闪闪发光的啊

        ”
    </span>
                </div>
            </div>
        </div>
    </div>

</div>

</body>
</html>