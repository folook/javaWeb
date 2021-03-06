
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
    <link rel="stylesheet" href="/topic_css/topic_index_new.css" media="all" />


    <!-- scripts -->
    <script src="//static2.cnodejs.org/public/index.min.f7c13f64.min.js"></script>



    <title>Zihuatanejo</title>

    <meta content="_csrf" name="csrf-param">
    <meta content="LeDh5wVA-3dODYHIMa16ah9qxQIQAWfNhCfs" name="csrf-token">
</head>
<body>
<!-- navbar -->
<div class='navbar'>
    <div class='navbar-inner'>
        <div class='container'>
            <a class='brand' >

<#--                <img src="//static2.cnodejs.org/public/images/cnodejs_light.svg" />-->
                <p> 欢迎 ${currentUser.username} ，您已登录 </p>

            </a>
<#--搜索框代码-->
<#--            <form id='search_form' class='navbar-search' action="/search">-->
<#--                <input type='text' id='q' name='q' class='search-query span3' value=''/>-->
<#--            </form>-->
            <ul class='nav pull-right'>
                <li><a href='/topic'>首页</a></li>
                <li>
                    <a href='https://www.cnblogs.com/looking-for-zihuatanejo'>

                        前端炫技场
                    </a>
                </li>

                <li><a href='/admin'>秘密吃瓜所</a></li>
                <li><a href='/admin/sicp'>SICP 训练营</a></li>

                <li><a href="/user/profile?id=${currentUser.id}" target="">个人信息管理所</a></li>


<#--      登出请求          -->
<#--                <li>-->
<#--                    <a href='/signout' data-method="post" rel="nofollow">退出</a>-->
<#--                </li>-->

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
                        <a class='user_avatar' href="/user/profile?id=${currentUser.id}">
                            <img src="https://avatars2.githubusercontent.com/u/44265825?v=4&amp;s=120" title=${currentUser.username}/>
                        </a>
                        <span class='user_name'><a class='dark' href="/user/profile?id=${currentUser.id}">${currentUser.username}</a></span>

                        <div class='board clearfix'>
                            <div class='floor'>
                                <span class='big'>用户身份: ${currentUser.role}</span>
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
                                _csrf: 'LeDh5wVA-3dODYHIMa16ah9qxQIQAWfNhCfs'
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


<#--        <div class='panel'>-->
<#--            <div class='header'>-->
<#--                <span class='col_fade'>无人回复的话题</span>-->
<#--            </div>-->
<#--            <div class='inner'>-->

<#--                <ul class="unstyled">-->
<#--                    <li>-->
<#--                        <div><a class='dark topic_title' href="/topic/5ec7b120a87fc8583363dc25" title="什么是上下文感知的插件">什么是上下文感知的插件</a>-->
<#--                        </div>-->
<#--                    </li>-->
<#--                    <li>-->
<#--                        <div><a class='dark topic_title' href="/topic/5ec79b0b67c8a45803da12f5" title="nest typeorm 报错 table already exists">nest typeorm 报错 table already exists</a>-->
<#--                        </div>-->
<#--                    </li>-->
<#--                    <li>-->
<#--                        <div><a class='dark topic_title' href="/topic/5ec6a22f67c8a45803da10fb" title="WordPress使用Nginx提速">WordPress使用Nginx提速</a>-->
<#--                        </div>-->
<#--                    </li>-->
<#--                    <li>-->
<#--                        <div><a class='dark topic_title' href="/topic/5ec69ea7a87fc8583363da28" title="有没有中后台开源的项目">有没有中后台开源的项目</a>-->
<#--                        </div>-->
<#--                    </li>-->
<#--                    <li>-->
<#--                        <div><a class='dark topic_title' href="/topic/5ec6896267c8a45803da10ba" title="没有同事在同一时区！—— Buffer 成员是如何远程工作的？">没有同事在同一时区！—— Buffer 成员是如何远程工作的？</a>-->
<#--                        </div>-->
<#--                    </li>-->

<#--                </ul>-->

<#--            </div>-->
<#--        </div>-->



        <div class='panel'>
            <div class='header'>
                <span class='col_fade'>公告栏</span>
                &nbsp;
                <a class='dark' > &gt;&gt;</a>
            </div>
            <div class='inner'>

                <p>欢迎您来到 Zihuatanejo，Zihuatanejo 中文译名是芝华塔尼欧，是电影《肖申克的救赎》中主人公安迪越狱后前往的地方</p>
            </div>
        </div>


        <div class='panel'>
            <div class='header'>
                <span class='col_fade'>联系我</span>
            </div>
            <div class='inner cnode-app-download'>
                <img width='200' src="/me/me.jpg">
                <br />
                <a href="https://github.com/soliury/noder-react-native" target="_blank"> </a>
            </div>
        </div>

    </div>


    <div id="content">
        <div class="panel">
            <div class="header">

                <a href="/topic"
                   class="topic-tab current-tab">全部</a>

                <a href='/topic/board/1'
                   class="topic-tab ">板块 1</a>

                <a href="/topic/board/2"
                   class="topic-tab ">板块 2</a>

                <a href="/topic/board/3"
                   class="topic-tab ">板块 3</a>

            </div>

            <div class="inner no-padding">
                <div id="topic_list">
                    <#list topics as t>

                        <div class='cell'>

                            <a class="user_avatar pull-left" >
<#--                                <img src="https://avatars2.githubusercontent.com/u/2081487?v=4&amp;s=120"-->
<#--                                     title=""-->
<#--                                />-->

                            </a>

                            <span class="reply_count pull-left">
    <span class="count_of_replies" title="回复数">
      ${t.replyNum}
    </span>
    <span class="count_seperator">/</span>
    <span class="count_of_visits" title='点击数'>
      ${t.browseNum}
    </span>
  </span>

                            <a class='last_time pull-right' >
                                <span class="last_active_time">最后活跃时间：${(t.updatedTime*1000)?number_to_datetime?string('yyyy-MM-dd HH:mm:ss')}</span>
                            </a>
                            <div class="topic_title_wrapper">
                                <span class='put_top'>板块${t.boardId}</span>
                                <a class='topic_title' href="/topic/detail/${t.id}" title= ${t.title}>
                                    ${t.title}
                                </a>
                            </div>
                        </div>
                    </#list>

                </div>
<#--                页码的代码-->
<#--                <div class='pagination' current_page='1'>-->
<#--                    <ul>-->


<#--                        <li class='disabled'><a>«</a></li>-->








<#--                        <li class='disabled'><a>1</a></li>-->



<#--                        <li><a href='/?tab=all&amp;page=2'>2</a></li>-->



<#--                        <li><a href='/?tab=all&amp;page=3'>3</a></li>-->



<#--                        <li><a href='/?tab=all&amp;page=4'>4</a></li>-->



<#--                        <li><a href='/?tab=all&amp;page=5'>5</a></li>-->




<#--                        <li><a>...</a></li>-->



<#--                        <li><a href='/?tab=all&amp;page=38'>»</a></li>-->

<#--                    </ul>-->
<#--                </div>-->
                <script>
                    $(document).ready(function () {
                        var $nav = $('.pagination');
                        var current_page = $nav.attr('current_page');
                        if (current_page) {
                            $nav.find('li').each(function () {
                                var $li = $(this);
                                var $a = $li.find('a');
                                if ($a.html() == current_page) {
                                    $li.addClass('active');
                                    $a.removeAttr('href');
                                }
                            });
                        }
                    });
                </script>

            </div>

        </div>
    </div>

</div>
<div id='backtotop'>回到顶部</div>
<div id='footer'>
    <div id='footer_main'>

        <div class='col_fade'>

            <a href="http://beian.miit.gov.cn/" target="_blank">晋ICP备20003185号</a>
        </div>


    </div>
</div>
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
