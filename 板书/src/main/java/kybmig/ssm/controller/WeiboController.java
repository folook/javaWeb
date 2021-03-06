package kybmig.ssm.controller;

import kybmig.ssm.Utility;
import kybmig.ssm.model.TodoModel;
import kybmig.ssm.model.UserModel;
import kybmig.ssm.model.WeiboModel;
import kybmig.ssm.service.TodoService;
import kybmig.ssm.service.UserService;
import kybmig.ssm.service.WeiboService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@Controller
public class WeiboController {

    private WeiboService weiboService;
    private UserService userService;

    public WeiboController(WeiboService weiboService) {
        this.weiboService = weiboService;
        this.userService = userService;
    }


    @PostMapping("/weibo/add")
    public ModelAndView add(String content) {
        weiboService.add(content);
        ModelAndView m = new ModelAndView("redirect:/weibo");
        return m;
    }


    @GetMapping("/weibo")
    public ModelAndView index() {
        List<WeiboModel> weibos = weiboService.all();
        ModelAndView m = new ModelAndView("weibo_index");
        m.addObject("weibos", weibos);
        return m;
    }


    @GetMapping("/weibo/edit")
    public ModelAndView edit(Integer id) {
        // TodoModel todo = todoService.findById(id);
        WeiboModel weibo = weiboService.findById(id);
        ModelAndView m = new ModelAndView("weibo_edit");
        m.addObject("weibo", weibo);
        return m;
    }



    @PostMapping("/weibo/update")
    public ModelAndView update(Integer id,String content) {
        Utility.log("content: %s", content);
        // todoService.update(id, content);
        weiboService.update(id, content);
        ModelAndView m = new ModelAndView("redirect:/weibo");
        return m;
    }


    @GetMapping("/weibo/delete")
    public ModelAndView delete(Integer id) {
        // Integer todoId = Integer.parseInt(id);
        // todoService.deleteById(id);
        weiboService.deleteById(id);
        ModelAndView m = new ModelAndView("redirect:/weibo");
        return m;
    }
}
