/*
    Logic：
        主要采用原生 JavaScript，
        只有在发送 Ajax 请求是才使用 JQuery
    
    ===
    1、登录注册页面的切换逻辑

    2、Ajax发送及接受响应逻辑
    ===
*/


// 封装选择器, 采用ES6箭头函数写法
const getSelector = ele => {
    return typeof ele === "string" ? document.querySelector(ele) : "";
}


// 登录注册载入

const containerShow = () => {
    var show = getSelector(".container")
    show.className += " container-show"
}


window.onload = containerShow;


// 登录注册页切换
((window, document) => {

    // 登录 -> 注册
    let toSignBtn = getSelector(".toSign"),
        toLoginBtn = getSelector(".toLogin")
        loginBox = getSelector(".login-box"),
        signBox = getSelector(".sign-box");
    
    toSignBtn.onclick = () => {
        loginBox.className += ' animate_login';
        signBox.className += ' animate_sign';
    }

    toLoginBtn.onclick = () => {
        loginBox.classList.remove("animate_login");
        signBox.classList.remove("animate_sign");
    }


})(window, document);

// Ajax 请求发送

console.log("我想了很久我的网站域名应该叫什么，最后决定用这个：looking-for-zihuatanejo\n" +
    "zihuatanejo是《肖申克的救赎》的男主角安迪逃狱后前往的地点。他曾这样描述：\"芝华塔尼欧，一个位于墨西哥，太平洋边上的小村庄，那里没有回忆，没有未来，只有温暖的现在的海洋。\"\n" +
    "愿我们都能找到自己的zihuatanejo，然后再一起探索世界的奥秘、释放自然的潜力~\n")