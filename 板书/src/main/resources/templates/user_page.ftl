
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <!-- meta -->
    <meta charset="utf-8"/>
    <meta name='description' content='CNode：Node.js专业中文社区'>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta name="keywords" content="nodejs, node, express, connect, socket.io"/>
    <!-- see http://smerity.com/articles/2013/where_did_all_the_http_referrers_go.html -->
    <meta name="referrer" content="always">


    <meta name="author" content="EDP@TaoBao" />

    <meta property="wb:webmaster" content="617be6bd946c6b96" />


    <link title="RSS" type="application/rss+xml" rel="alternate" href="/rss"/>


    <link rel="icon" href="//static2.cnodejs.org/public/images/cnode_icon_32.png" type="image/x-icon"/>


    <!-- style -->
    <link rel="stylesheet" href="/user_page_css/user_page.css" media="all" />


    <!-- scripts -->
    <script src="//static2.cnodejs.org/public/index.min.f7c13f64.min.js"></script>



    <title>个人信息管理所</title>

    <meta content="_csrf" name="csrf-param">
    <meta content="tw1P84Dv-bnSidUbRIPnKUjvY8PImnMNrX8g" name="csrf-token">
</head>
<body>
<!-- navbar -->
<div class='navbar'>
    <div class='navbar-inner'>
        <div class='container'>
            <a class='brand' >

                <#--                <img src="//static2.cnodejs.org/public/images/cnodejs_light.svg" />-->
                <p>Hi，${currentUser.username}，在这里修改你的个人信息</p>

            </a>
<#--            <ul class='nav pull-right'>-->
<#--  i><a href='/admin/sicp'>SICP 训练营</a></li>-->
<#--                <li><a href='/index'>首页</a></li>-->

<#--                <li>-->
<#--                    <a href='/admin/qianduan'>-->

<#--                        前端炫技场-->
<#--                    </a>-->
<#--                </li>-->

<#--                <li><a href='/admin'>秘密吃瓜所</a></li>-->
<#--                <l-->
<#--                <li><a href="/user/profile?id=${currentUser.id}" target="">个人信息管理所</a></li>-->

            </ul>
            <a class="btn btn-navbar" id="responsive-sidebar-trigger">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </a>
        </div>
    </div>
</div>
<div id='main'>
    <div id='sidebar'>

        <div class='panel'>

            <div class='header'>
                <span class='col_fade'>个人信息</span>
            </div>
            <div class='inner'>
                <div class='user_card'>
                    <div>
                        <a class='user_avatar' href="/user/folook">
                            <img src="https://avatars2.githubusercontent.com/u/44265825?v=4&amp;s=120" title="folook"/>
                        </a>
                        <span class='user_name'><a class='dark' href="/user/folook">${currentUser.username}</a></span>

                        <div class='board clearfix'>
                            <div class='floor'>
                                <span class='big'>用户身份: ${currentUser.role} </span>
                            </div>
                        </div>
                        <div class="space clearfix"></div>
                        <span class="signature">
        “
        
            ${currentUser.signature}

        ”
    </span>
                    </div>
                </div>


                <script>
                    $(document).ready(function () {
                        $('.follow_btn').click(function () {
                            var $me = $(this);
                            var action = $me.attr('action');
                            var params = {
                                follow_id: '5ec7ca6d67c8a45803da134d',
                                _csrf: 'tw1P84Dv-bnSidUbRIPnKUjvY8PImnMNrX8g'
                            };
                            $.post('/user/' + action, params, function (data) {
                                if (data.status === 'success') {
                                    var $btns = $('.follow_btn');
                                    if (action === 'follow') {
                                        $btns.html('取消关注');
                                        $btns.attr('action', 'un_follow');
                                    } else {
                                        $btns.html('加入关注');
                                        $btns.attr('action', 'follow');
                                    }
                                    $btns.toggleClass('btn-success');
                                }
                            }, 'json');
                        });
                    });
                </script>


            </div>

        </div>


        <div class="panel">
            <div class='inner'>
                <a href='/topic/create' id='create_topic_btn'>
                    <span class='span-success'>发布新帖</span>
                </a>
            </div>
        </div>











        <div class='panel'>
            <div class='header'>
                <span class='col_fade'>联系我</span>
            </div>
            <div class='inner cnode-app-download'>
                <img width='200' src="/me/me.jpg">
                <br />
                <a href="https://github.com/soliury/noder-react-native" target="_blank">联系我</a>
            </div>
        </div>

    </div>


    <div id='content'>
        <div class='panel'>
            <div class='header'>
                <ul class='breadcrumb'>
                    <li><a href='/'>主页</a><span class='divider'>/</span></li>
                    <li class='active'>设置</li>
                </ul>
            </div>
            <div class='inner'>


                <form id='setting_form' class='form-horizontal' action='/user/update' method='post'>
                    <input name="id" placeholder="id" value="${currentUser.id}" type="hidden">
                    <div class='control-group'>
                        <label class='control-label' for='name'>用户名</label>

                        <div class='controls'>
                            <input class='input-xlarge readonly' id='name' name='username' size='30' type='text' readonly='true'
                                   value="${currentUser.username}"/>
                        </div>
                    </div>
                    <div class='control-group'>
                        <label class='control-label' for='email'>电子邮件</label>

                        <div class='controls'>
                            <input class='input-xlarge readonly' id='email' name='email' size='30' type='text' placeholder="您当前所在的用户分组不支持修改电子邮件"
                                   readonly='true' value="${currentUser.email}"/>

                        </div>
                    </div>
                    <div class='control-group'>
                        <label class='control-label' for='location'>用户分组</label>

                        <div class='controls'>
                            <input class='input-xlarge' id='location' name='location' size='30' type='text' disabled="disabled"
                                   value="${currentUser.role}"/>
                        </div>
                    </div>

                    <div class='control-group'>
                        <label class='control-label' for='weibo'>头像</label>

                        <div class='controls'>
                            <input class='input-xlarge' id='weibo' name='avatar' size='30' type='text' value=""
                                   placeholder="请将头像链接置于此"/>
                        </div>
                    </div>
                    <div class='control-group'>
                        <label class='control-label' for='signature'>个性签名</label>

                        <div class='controls'>
                            <textarea class='input-xlarge' id='signature' name='signature' placeholder="强烈建议您使用 24 字核心价值观或人民有信仰、国家有力量等正能量签名！" size='30'> ${currentUser.signature}</textarea>
                        </div>
                    </div>
                    <input type='hidden' id='action' name='action' value='change_setting'/>
                    <input type='hidden' name='_csrf' value='tw1P84Dv-bnSidUbRIPnKUjvY8PImnMNrX8g'/>

                    <div class='form-actions'>
                        <input type='submit' class='span-primary submit_btn' data-loading-text="保存中.." value='保存设置'/>
                    </div>
                </form>
            </div>
        </div>

        <div class='panel'>
            <div class='header'>
                <span class='col_fade'>更改密码(当前您所在的用户分组不支持更改密码)</span>
            </div>
            <div class='inner'>
                <form id='change_pass_form' class='form-horizontal' action='/setting' method='post'>
                    <div class='control-group'>
                        <label class='control-label' for='old_pass'>当前密码</label>

                        <div class='controls'>
                            <input class='input-xlarge' type='password' id='old_pass' name='old_pass' size='30' disabled="disabled"/>
                        </div>
                    </div>
                    <div class='control-group'>
                        <label class='control-label' for='new_pass'>新密码</label>

                        <div class='controls'>
                            <input class='input-xlarge' type='password' id='new_pass' name='new_pass' size='30' disabled="disabled"/>
                        </div>
                    </div>
                    <input type='hidden' id='action' name='action' value='change_password'/>
                    <input type='hidden' name='_csrf' value='tw1P84Dv-bnSidUbRIPnKUjvY8PImnMNrX8g'/>

                    <div class='form-actions'>
                        <input type='submit' class='span-primary submit_btn' data-loading-text="更改中.." value='更改密码'/>
                    </div>
                </form>
            </div>
        </div>

    </div>

    <script type="text/javascript">
        $(function() {
            // qrcode generate
            var accessToken = "271f3db1-b785-4263-a490-e7ce4ba46ebe";
            var qrcode = new QRCode(document.getElementById("access-token-qrcode"), {
                text: accessToken,
                width: 200,
                height: 200,
            });
            // END qrcode generate

            // refreshToken
            $(".refreshToken").on("click", function() {
                $.post("/user/refresh_token", function(result) {
                    if (result.status === 'success') {
                        $("#accessToken").text(result.accessToken);
                        qrcode.makeCode(result.accessToken)
                    } else {
                        alert(result.message);
                    }
                })
            })
        });
    </script>

</div>
<div id='backtotop'>回到顶部</div>
<div id="sidebar-mask"></div>


<script>
    // google analytics
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
        (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
        m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script', "https://www.google-analytics.com/analytics.js",'ga');

    ga('create', 'UA-41753901-5', 'auto');
    ga('send', 'pageview');
</script>



<div style="display:none;">
    <script src="//s95.cnzz.com/z_stat.php?id=1254020586&web_id=1254020586" language="JavaScript"></script>
</div>


</body>
</html>
