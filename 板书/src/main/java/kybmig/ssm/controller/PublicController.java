package kybmig.ssm.controller;

import kybmig.ssm.Utility;
import kybmig.ssm.model.*;
import kybmig.ssm.service.IpService;
import kybmig.ssm.service.TodoService;
import kybmig.ssm.service.UserService;
import kybmig.ssm.service.WebNumService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.net.InetAddress;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.UUID;

@Controller
public class PublicController {

    private UserService userService;
    private WebNumService webNumService;
    private IpService ipService;



    public PublicController(UserService userService, WebNumService webNumService, IpService ipService) {
        this.userService = userService;
        this.webNumService = webNumService;
        this.ipService = ipService;
    }


    @GetMapping("/loginError")
    public ModelAndView loginError() {
        ModelAndView m = new ModelAndView("loginError");
        return m;
    }
    @GetMapping("/adminError")
    public ModelAndView adminError() {
        ModelAndView m = new ModelAndView("adminError");
        return m;
    }


    @GetMapping("/index")
    public ModelAndView indexView(HttpServletRequest request) {
        UserModel current = userService.currentUser(request);
        webNumService.addIndexPageBrowserNum();
        ModelAndView m = new ModelAndView("home_page/index");
        m.addObject("currentUser", current);
//        ArrayList a = new ArrayList();
        return m;
    }



    @GetMapping("/")
    public ModelAndView homeIndexView1(HttpServletRequest request) {
        webNumService.addHomePageBrowserNum();
// 记录 ip 的代码
 //       String ipAddr = this.getIpAddr(request);;
//        IpModel ip = ipService.findIp(ipAddr);
//        if(ip == null){
//            Utility.log("ip is null");
//            ipService.addNewIp(ipAddr);
//        } else {
//            Utility.log("ip is not null");
//            ipService.updateOldIpAddNum(ip);
//        }
        ModelAndView m = new ModelAndView("home_page/shouye");

        return m;
    }

    @GetMapping("/zihuatanejo")
    public ModelAndView ZHTNO(HttpServletRequest request) {
        UserModel current = userService.currentUser(request);
        ModelAndView m = new ModelAndView("ZHTNO");
        return m;
    }
////发邮件的入口，先屏蔽
//    @GetMapping("/resetPassword")
//    public ModelAndView resetPasswordIndex(HttpServletRequest request) {
//        UserModel current = userService.currentUser(request);
//        ModelAndView m = new ModelAndView("resetPassword");
////        m.addObject("currentUser", current);
//        return m;
//    }


    private String getIpAddr(HttpServletRequest request) {
        String ip = request.getHeader("x-forwarded-for");
        if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("Proxy-Client-IP");
        }
        if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("WL-Proxy-Client-IP");
        }
        if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getRemoteAddr();
            if(ip.equals("127.0.0.1")){
                //根据网卡取本机配置的IP
                InetAddress inet=null;
                try {
                    inet = InetAddress.getLocalHost();
                } catch (Exception e) {
                    e.printStackTrace();
                }
                ip= inet.getHostAddress();
            }
        }
        // 多个代理的情况，第一个IP为客户端真实IP,多个IP按照','分割
        if(ip != null && ip.length() > 15){
            if(ip.indexOf(",")>0){
                ip = ip.substring(0,ip.indexOf(","));
            }
        }
        return ip;
    }

}
