package kybmig.ssm.controller;

import kybmig.ssm.model.UserModel;
import kybmig.ssm.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Controller
public class PraviteController {

    private UserService userService;

    public PraviteController(UserService userService) {
        this.userService = userService;
    }

    //秘密吃瓜所
    @GetMapping("/admin")
    public ModelAndView indexView(HttpServletRequest request) {
        UserModel current = userService.currentUser(request);
        ModelAndView m = new ModelAndView("admin");
        m.addObject("currentUser", current);
        return m;
    }
//提问模仿器
    @GetMapping("/question")
    public ModelAndView indexQuestion(HttpServletRequest request) {
        UserModel current = userService.currentUser(request);
        ModelAndView m = new ModelAndView("question");
        m.addObject("currentUser", current);
        return m;
    }

    //提问模仿器
    @GetMapping("/admin/qianduan")
    public ModelAndView qianduan(HttpServletRequest request) {
        UserModel current = userService.currentUser(request);
        ModelAndView m = new ModelAndView("question");
        m.addObject("currentUser", current);
        return m;
    }

    //提问模仿器
    @GetMapping("/admin/sicp")
    public ModelAndView sicp(HttpServletRequest request) {
        UserModel current = userService.currentUser(request);
        ModelAndView m = new ModelAndView("question");
        m.addObject("currentUser", current);
        return m;
    }


}
