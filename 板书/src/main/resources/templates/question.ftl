<!DOCTYPE HTML>

<html>
<head>
    <title>Getting Started: Serving Web Content</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link rel="stylesheet" href="question.css">

</head>
<body>
<p> hello question !</p>
<div class="gua-block">
    <button id="id-button-toggle-update" class="gua-full pure-button pure-button-primary"
            data-show="我要提问" data-hide="取消提问"></button>
    <div id='id-form-question'>
        <p>
            必读：
            <a href="https://mp.weixin.qq.com/s/4gdrdjtNVPOW3Lx7d1jFBw">能有效解决问题的提问方法</a>
        </p>
        <p>
            排版：
            <a href="/questions/1883">markdown 示例</a>
        </p>
        <input title="title" data-max-line="500" class="gua-full gua-input gua-content" placeholder="标题">
        <div class="text">
            <p>标题格式：课程名称|课次|题目|有问题的步骤</p>
            <p>如：fe5|课6|作业9|第2步</p>
        </div>
        <textarea class="gua-full gua-input gua-content" required
                  title="expectation" placeholder="你的目的" data-max-line="500"></textarea>
        <div class="text">
            <p>作业过程中遇到的问题，这一栏直接写“完成作业”</p>
        </div>
        <textarea class="gua-full gua-input gua-content" required
                  title="thinking" placeholder="你的想法和思路" data-max-line="500"></textarea>
        <div class="text">
            <p>打算如何操作达到目的？</p>
        </div>
        <textarea id="id-textarea-uploader" class="gua-full gua-input gua-content show-image" data-upload=".upload-image" required
                  title="problems" placeholder="描述你的问题" data-max-line="500"></textarea>
        <div class="text">
            <p>debug 是程序员最重要的基本能力，也是上课的重要内容，遇到问题应该先用 log 来 debug，尽量定位到更具体的代码位置</p>
            <p>1. 描述你遇到了什么问题（对于 web 后端班同学的报错问题，要说清楚是怎么操作导致了这个报错，比如访问某个 url 浏览器返回 404）</p>
            <p>2. 贴出程序的完整输出，包括 log 和报错信息</p>
        </div>
        <textarea class="gua-full gua-input gua-content"
                  title="code" placeholder="你的实现代码" data-max-line="2000"></textarea>
        <div class="text">
            <p>要求代码完整，能直接运行看到你遇到的问题</p>
            <p>包含问题 debug 过程中进行的 log 操作</p>
        </div>
        <button id="id-button-submit" class="gua-full pure-button pure-button-primary gua-full">提交问题</button>
    </div>
</div>
</body>
</html>