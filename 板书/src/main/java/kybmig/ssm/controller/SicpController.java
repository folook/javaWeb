package kybmig.ssm.controller;

import kybmig.ssm.model.UserModel;
import kybmig.ssm.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Controller
public class SicpController {

    private UserService userService;

    public SicpController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping("/sicp")
    public ModelAndView indexView(HttpServletRequest request) {
        UserModel current = userService.currentUser(request);
        ModelAndView m = new ModelAndView("sicp");
        m.addObject("currentUser", current);
        return m;
    }


}
