<!DOCTYPE html>
<html lang="zh-CN">

<head>
    <meta charset="utf-8">
    <title>欢迎来到 zihuatanejo</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css">
    <link rel="stylesheet" href="zihuatanejo.css">
</head>

<body>
<img width="100%" height="100%" src="/2.png" style="position:absolute; left:0; top:0; z-index:-1;"/>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
    <div class="dowebok" id="dowebok">
        <div class="form-container sign-up-container">
            <form action="#">
                <h1>注册</h1>
<#--                <div class="social-container">-->
<#--                    <a href="#" class="social"><i class="fab fa-facebook-f"></i></a>-->
<#--                    <a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>-->
<#--                    <a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>-->
<#--                </div>-->
                <span>释放自然的潜力</span>
                <input type="text" placeholder="用户名">
                <input type="email" placeholder="电子邮箱">
                <input type="password" placeholder="密码">
                <input type="yanzhengma" placeholder="邮箱验证码">
                <button disabled="true">尚未开放注册</button>
            </form>
        </div>
        <div class="form-container sign-in-container">
            <form action="/user/login" method="post">
                <h1>登录</h1>
<#--                <div class="social-container">-->
<#--                    <a href="#" class="social"><i class="fab fa-facebook-f"></i></a>-->
<#--                    <a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>-->
<#--                    <a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>-->
<#--                </div>-->
                <span>探索世界的奥秘</span>
                <input name = "username" type="text" placeholder="用户名或邮箱">
                <input name = "password" type="password" placeholder="密码">
                <a href="#">忘记密码？(点了也没用，这个功能还没做)</a>
                <button>登录</button>
            </form>
        </div>
        <div class="overlay-container">
            <div class="overlay">
                <div class="overlay-panel overlay-left">
                    <h1>已有帐号？</h1>
                    <p>请使用内测帐号进行登录</p>
                    <button class="ghost" id="signIn">登录</button>
                </div>
                <div class="overlay-panel overlay-right">
                    <h1>没有帐号？</h1>
                    <p>内测中，尚未开放注册</p>
                    <button class="ghost" id="signUp">注册</button>
                </div>
            </div>
        </div>
    </div>
    <script src="zihuatanejo.js"></script>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>

    <a href="http://beian.miit.gov.cn/" target="_blank">晋ICP备20003185号</a>
</body>

</html>