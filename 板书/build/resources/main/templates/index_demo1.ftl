<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>欢迎来到 zihuatanejo</title>
    <link rel="stylesheet" href="zihuatanejo.css">
    <style>a:link{TEXT-DECORATION:none;color: black}
        a:active {TEXT-DECORATION:none;color: black}
        a:hover{TEXT-DECORATION:none;color: black}
        a:visited { text-decoration: none;color: gainsboro}
    </style>
</head>
<body class="login-bg">

<div class="container">
    <div class="login-box">
        <div class="apple-btn login-apple">
            <li class="red-btn"></li>
            <li class="yellow-btn"></li>
            <li class="green-btn"></li>
        </div>
        <div class="title">探索世界的奥秘</div>
        <form action="/user/login" method="post">
        <div class="input">
            <input name = "username" type="text" id="login-user" placeholder="Input your username">
        </div>
        <div class="input">
            <input name = "password" type="password" id="login-password" placeholder="Input your password">
        </div>
<#--        <div class="login-btn">-->
            <input class="login-btn" value="登录"   type="submit" >
<#--        </div>-->
        </form>
        <br>
        <br>
<#--        <a href='/resetPassword'> 忘记密码？</a>-->

        <div class="change-box login-change">
            <div class="change-btn toSign">
                <span>去注册</span>
            </div>
        </div>
    </div>

    <div class="sign-box">
        <div class="apple-btn sign-apple">
            <li class="red-btn"></li>
            <li class="yellow-btn"></li>
            <li class="green-btn"></li>
        </div>
        <div class="title">释放自然的潜力</div>
        <form action="/user/register" method="post">
        <div class="input">
            <input type="text" id="sign-user" placeholder="wait...">
        </div>
        <div class="input">
            <input type="password" id="sign-password" placeholder="coming soon...">
        </div>
<#--        <div class="sign-btn">-->
            <input class="sign-btn" value="尚未开放注册"   type="submit" disabled="disabled">
<#--        </div>-->
            <form>
        <div class="change-box sign-change">
            <div class="change-btn toLogin">
                <span>去登陆</span>
            </div>
        </div>
    </div>
</div>
<#--<script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>-->
<script src="./script.js"></script>

</body>

</html>