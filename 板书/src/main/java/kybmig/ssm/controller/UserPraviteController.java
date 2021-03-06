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
public class UserPraviteController {

    private UserService userService;

    public UserPraviteController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping("/user/edit")
    public ModelAndView userEdit(int id) {
        Utility.log("in here %s", id);
        UserModel current = userService.findById(id);
        ModelAndView m = new ModelAndView("user_edit_page");
        m.addObject("currentUser", current);
        return m;
    }

//不提供在线修改密码服务
    @PostMapping("/user/update")
    public ModelAndView updateUserNameAndAvatar(Integer id, String username, String avatar, String signature) {
        Utility.log("this is new name %s", username);
        userService.updateUserNameAndAvatar(id, username, avatar, signature);
        String redirect = String.format("redirect:/user/profile?id=%s", id);
        ModelAndView m = new ModelAndView(redirect);
        return m;
    }

    //    //插入个人用户所有信息
    @GetMapping("/user/profile")
    public ModelAndView profile(int id) {
        Utility.log("in here %s", id);

            UserModel current = userService.findById(id);
            ModelAndView m = new ModelAndView("user_page");
            m.addObject("currentUser", current);
            return m;

    }

}
