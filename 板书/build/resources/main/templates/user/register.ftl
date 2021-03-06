<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>注册页面</title>

    <style>a:link{TEXT-DECORATION:none;color: black}
           a:active {TEXT-DECORATION:none;color: black}
           a:hover{TEXT-DECORATION:none;color: black}
           a:visited { text-decoration: none;color: black}
    </style>

</head>
<body>
    <h1>"抱歉，注册功能暂时不对外开放,你可以先去公共区域逛逛<a href='/register_real' style="cursor:default" >"</a></h1>
    <form action="/user/register" method="post">
        <input type="text" name="username" placeholder="请输入用户名" hidden>
        <br>
        <input type="text" name="password" placeholder="请输入密码" hidden>
        <br>
<#--        <button type="submit">注册</button>-->
    </form>
<#--    <h3>${user.username}</h3>-->
</body>
</html>