
var signUpButton = document.getElementById('signUp')
var signInButton = document.getElementById('signIn')
var container = document.getElementById('dowebok')

signUpButton.addEventListener('click', function () {
    container.classList.add('right-panel-active')
})

signInButton.addEventListener('click', function () {
    container.classList.remove('right-panel-active')
});

console.log("我想了很久我的网站域名应该叫什么，最后决定用这个：looking-for-zihuatanejo\n" +
    "zihuatanejo是《肖申克的救赎》的男主角安迪逃狱后前往的地点。他曾这样描述：\"芝华塔尼欧，一个位于墨西哥，太平洋边上的小村庄，那里没有回忆，没有未来，只有温暖的现在的海洋。\"\n" +
    "愿我们都能找到自己的zihuatanejo，一起探索世界的奥秘、释放自然的潜力\n")