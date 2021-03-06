package kybmig.ssm.controller;

import kybmig.ssm.Utility;
import kybmig.ssm.model.UserModel;
import kybmig.ssm.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Controller
public class UserController {

    private UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }


    @GetMapping("/register_real")
    public ModelAndView registerViewReal() {
        ModelAndView m = new ModelAndView("user/register_real");
        return m;
    }




// 最初的简陋注册页面
//    @GetMapping("/register")
//    public ModelAndView registerView() {
//        ModelAndView m = new ModelAndView("user/register");
//        return m;
//    }

//注册函数，为了防止跨站伪造请求，还是先注释了
//    @PostMapping("/user/register")
//    public ModelAndView register(HttpServletRequest request) {
//
//        String username = request.getParameter("username");
//        String password=  request.getParameter("password");
//        Utility.log("-----------username is %s---------", username);
//        userService.add(username, password);
//        ModelAndView m = new ModelAndView("redirect:/");//点击注册按钮后回到域名页
//        return m;
//    }

//错误的访问方式，我当时为啥要写这个？对，是怕有人直接在浏览器中输入/user/register路径，程序会Completed 405 METHOD_NOT_ALLOWED 405错误
//    @GetMapping("/user/register")
//    public ModelAndView registerJoke() {
//        ModelAndView m = new ModelAndView("redirect:/");//点击注册按钮后回到域名页
//        return m;
//    }



//    @GetMapping("/login")//登录页面
//    public ModelAndView loginView(HttpServletRequest request) {
//        UserModel currentUser = userService.currentUser(request);
//        ModelAndView m = new ModelAndView("user/login");
//        m.addObject("currentUser", currentUser);
//        return m;
//    }

    //错误的访问方式，我当时为啥要写这个？对，是怕有人直接在浏览器中输入/user/login路径，程序会Completed 405 METHOD_NOT_ALLOWED 405错误
    @GetMapping("/user/login")//点击登录按钮访问的页面
    public ModelAndView loginJoke(HttpServletRequest request) {
        ModelAndView m = new ModelAndView("redirect:/");//点击注册按钮后回到域名页
        return m;
    }

    @PostMapping("/user/login")//点击登录按钮访问的页面
    public ModelAndView login(HttpServletRequest request) {
        String username = request.getParameter("username");
        String password=  request.getParameter("password");

        if (userService.validateLogin(username, password)) {
            UserModel user = userService.findByUsername(username);
            Utility.log("登录成功");
            //request.getSession()，从当前request中获取session，如果获取不到session，则会自动创建一个session，并返回新创建的session；如果获取到，则返回获取到的session;
            request.getSession().setAttribute("user_id", user.getId());//这句要注意，发出登录请求，验证通过后就会setAttribute
            return new ModelAndView("redirect:/index");//登陆成功跳到主页
        } else {
            ModelAndView m = new ModelAndView("redirect:/");
            return m;
        }

    }
}
