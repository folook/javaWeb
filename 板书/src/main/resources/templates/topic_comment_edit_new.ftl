
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
    <link rel="stylesheet" href="//static2.cnodejs.org/public/stylesheets/index.min.23a5b1ca.min.css" media="all" />


    <!-- scripts -->
    <script src="/topic_css/topic_comment_edit.css"></script>



    <title>CNode：Node.js专业中文社区</title>

    <meta content="_csrf" name="csrf-param">
    <meta content="3v7RXrW9-6hIfsKkh6L49CY_onw70mJHNej0" name="csrf-token">
</head>
<body>
<!-- navbar -->
<div class='navbar'>
    <div class='navbar-inner'>
        <div class='container'>
            <a class='brand' href='/'>

                <img src="//static2.cnodejs.org/public/images/cnodejs_light.svg" />

            </a>

            <form id='search_form' class='navbar-search' action="/search">
                <input type='text' id='q' name='q' class='search-query span3' value=''/>
            </form>
            <ul class='nav pull-right'>
                <li><a href='/'>首页</a></li>

                <li>
                    <a href='/my/messages'>

                        未读消息
                    </a>
                </li>

                <li><a href='/getstart'>新手入门</a></li>
                <li><a href='/api'>API</a></li>

                <li><a href="/about" target="">关于</a></li>


                <li><a href='/setting'>设置</a></li>
                <li>
                    <a href='/signout' data-method="post" rel="nofollow">退出</a>
                </li>

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
                <span class='col_fade'>Markdown 语法参考</span>
            </div>
            <div class='inner'>
                <ol>
                    <li><tt>### 单行的标题</tt></li>
                    <li><tt>**粗体**</tt></li>
                    <li><tt>`console.log('行内代码')`</tt></li>
                    <li><tt>```js\n code \n```</tt> 标记代码块</li>
                    <li><tt>[内容](链接)</tt></li>
                    <li><tt>![文字说明](图片链接)</tt></li>
                </ol>
                <span><a href='https://segmentfault.com/markdown' target='_blank'>Markdown 文档</a></span>
            </div>
        </div>

        <div class='panel'>
            <div class='header'>
                <span class='col_fade'>话题发布指南</span>
            </div>
            <div class='inner'>
                <ol>
                    <li>尽量把话题要点浓缩到标题里</li>
                    <li>代码含义和报错可在 <a href="http://segmentfault.com/t/node.js">SegmentFault</a> 提问</li>
                </ol>
            </div>
        </div>

    </div>


    <div id='content'>
        <div class='panel'>
            <div class='header'>
                <ol class='breadcrumb'>
                    <li><a href='/'>主页</a><span class='divider'>/</span></li>
                    <li class='active'>编辑回复</li>
                </ol>
            </div>
            <div class='inner post'>


                <form id='edit_reply_form' action="/topic/comment/update" method='post'>
                    <fieldset>
                        <div class='markdown_editor in_editor'>
                            <div class='markdown_in_editor'>
                                <input name="id" placeholder="id" value="${topicComment.id}" hidden>
              <textarea class='editor' name='content' rows='20'
                        placeholder='回复支持 Markdown 语法, 请注意标记代码'
                        autofocus
              >${topicComment.content}</textarea>

                                <div class='editor_buttons'>
                                    <input type="submit" class='span-primary submit_btn' data-loading-text="提交中.."
                                           value="提交">
                                </div>
                            </div>

                        </div>

                        <input type='hidden' name='_csrf' value='3v7RXrW9-6hIfsKkh6L49CY_onw70mJHNej0'/>
                    </fieldset>
                </form>
            </div>

        </div>
    </div>

    <!-- markdown editor -->
    <script src="//static2.cnodejs.org/public/editor.min.1a456564.min.js"></script>


    <script>
        (function () {
            var editor = new Editor();
            editor.render($('.editor')[0]);
        })();
    </script>

</div>
<div id='backtotop'>回到顶部</div>
<div id='footer'>
    <div id='footer_main'>
        <div class="links">
            <a class='dark' href='/rss'>RSS</a>
            |
            <a class='dark' href='https://github.com/cnodejs/nodeclub/'>源码地址</a>
        </div>

        <div class='col_fade'>

            <p>CNode 社区为国内最专业的 Node.js 开源技术社区，致力于 Node.js 的技术研究。</p>
            <p>服务器赞助商为
                <a href="http://www.ucloud.cn/?utm_source=zanzhu&utm_campaign=cnodejs&utm_medium=display&utm_content=yejiao&ytag=cnodejs_logo" target="_blank"
                   class="sponsor_outlink" data-label="ucloud_bottom">
                    <img src="//static.cnodejs.org/FuIpEaM9bvsZKnQ3QfPtBHWQmLM9" title="ucloud"
                         alt="ucloud" width="92px"/>
                </a>
                ，存储赞助商为
                <a href="http://www.qiniu.com/?ref=cnode" target="_blank"
                   class="sponsor_outlink" data-label="qiniu_bottom">
                    <img src="//static.cnodejs.org/Fg0jtDIcTqVC049oVu5-sn6Om4NX" title="七牛云存储"
                         alt="七牛云存储" width="115px"/>
                </a>
                ，由<a href="https://www.aliyun.com/product/nodejs?ref=cnode" target="_blank"
                     class="sponsor_outlink" data-label="alinode_bottom">
                    <img src="//static.cnodejs.org/FpMZk31PDyxkC8yStmMQL4XroaGD" title="alinode"
                         alt="alinode" height="54px" width="166px"/>
                </a>提供应用性能服务。
            </p>
            <p>新手搭建 Node.js 服务器，推荐使用无需备案的 <a href="https://www.digitalocean.com/?refcode=eba02656eeb3">DigitalOcean(https://www.digitalocean.com/)</a></p>
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
