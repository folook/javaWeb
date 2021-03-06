package kybmig.ssm.controller;

import kybmig.ssm.Utility;
import kybmig.ssm.model.UserModel;
import kybmig.ssm.service.UserService;
import org.springframework.boot.autoconfigure.mail.MailProperties;
import org.springframework.core.task.AsyncTaskExecutor;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.UUID;


@Component
class AsyncTask {

    private MailSender sender;
    private MailProperties mailProperties;

    public AsyncTask(MailSender sender, MailProperties mailProperties) {
        this.sender = sender;
        this.mailProperties = mailProperties;
    }


    @Async
    public void sendMail(String address, String title, String content) {
        SimpleMailMessage mailMessage = new SimpleMailMessage();
        mailMessage.setFrom(mailProperties.getUsername());
        mailMessage.setSubject(title);
        mailMessage.setTo(address);
        mailMessage.setText(content);

        sender.send(mailMessage);
        Utility.log("异步发送邮件函数");
    }
}

@Controller
@RequestMapping("/mail")
public class MailController {
    private MailSender sender;
    private MailProperties mailProperties;
    private AsyncTask asyncTask;
    private HashMap<String, String> tokenMap = new HashMap<>();
    private UserService userService;


    public MailController(MailSender sender, MailProperties mailProperties, AsyncTask asyncTask, UserService userService) {
        this.sender = sender;
        this.mailProperties = mailProperties;
        this.asyncTask = asyncTask;
        this.userService = userService;

    }

    @GetMapping("/index")
    public ModelAndView index() {
        return new ModelAndView("mail/index");
    }

    public void sendMail(String address, String title, String content) {
        SimpleMailMessage mailMessage = new SimpleMailMessage();
        mailMessage.setFrom(mailProperties.getUsername());
        mailMessage.setSubject(title);
        mailMessage.setTo(address);
        mailMessage.setText(content);

        sender.send(mailMessage);
    }

    @GetMapping("/send")
    public ModelAndView send(String address, String title, String content) {
        sendMail(address, title, content);

        return new ModelAndView("/mail/index");
    }


    @ResponseBody
    @PostMapping("/send/async")
    public String  sendAsync(String address, String title, String content) {
        asyncTask.sendMail(address, title, content);
        Utility.log("发送邮件完毕");
        return "发送成功";
    }

    //点击 给我发送邮件 按钮就会埋入 token
    @PostMapping("/reset/send")
    public String resetPassword(String username) {
        UserModel currentUser = userService.findByUsername(username);//拿到要求修改密码的用户
        String token = UUID.randomUUID().toString();
        tokenMap.put(currentUser.getId().toString(), token);//存一个字典，key 是当前用户的 id，value 是 随机的字符串 token
//        m.addObject("currentUser", current);
        String UrlWithToken = String.format("http://localhost:9000/mail/reset/view?token=%s", token);;
        asyncTask.sendMail(currentUser.getEmail(), "zihuatanejo重置密码", UrlWithToken);//给用户发送邮件
        return "发送成功";
    }


    @GetMapping("/reset/view")
    public ModelAndView resetPasswordView(String token, HttpServletRequest request) {
        UserModel currentUser = userService.currentUser(request);
        String userToken = tokenMap.get(currentUser.getId().toString());
        Utility.log("这是currentUser id： %s", currentUser.getId().toString());
        Utility.log(" 这是两个token： %s 第二个： %s", userToken, token);

        if(userToken ==null || token == null) {
            return new ModelAndView("/mail/update_fake");
        }


        if (userToken.equals(token)) {
            ModelAndView m = new ModelAndView("/mail/update_real");
            m.addObject("currentUser", currentUser);
            m.addObject("token", token);

            return m;
        } else {
            ModelAndView m = new ModelAndView("/mail/update_fake");
            return m;
        }
//        return new ModelAndView("/mail/update_fake");
    }


    @PostMapping("/reset/update")
    public ModelAndView updatePassword(String token, String password, HttpServletRequest request) {
        UserModel currentUser = userService.currentUser(request);
        String userToken = tokenMap.get(currentUser.getId().toString());
        Utility.log("新密码：%s, 用户 id：%s", password, userToken);
        if (userToken.equals(token)) {
            Integer userID = currentUser.getId();
            Utility.log("新密码：%s, 用户 id：%d", password, userID);
            userService.updatePassword(userID, password);

            return new ModelAndView("redirect:/");
        } else {
            return new ModelAndView("/mail/update_fake");
        }
    }



}
