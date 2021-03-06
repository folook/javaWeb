package kybmig.ssm.controller;

import kybmig.ssm.Utility;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Controller
public class HelloWorldController {

//    @GetMapping("/demo")
//    public ModelAndView demoRoute(@RequestParam(name="name", required=false, defaultValue="默认名字测试") String name) {
//
//        // model 说的是给模板引擎的 model
//        // view 说的是模板名字，没有后缀
//        // view 可以自动补全，也可以直接跳转
//        ModelAndView mv = new ModelAndView("hello");
//        mv.addObject("name", name);
//        return mv;
//    }
//
//
//    @GetMapping("/demo1")
//    public ModelAndView demoRoute1(String name) {
//
//        // model 说的是给模板引擎的 model
//        // view 说的是模板名字，没有后缀
//        // view 可以自动补全，也可以直接跳转
//        ModelAndView mv = new ModelAndView("hello");
//        Utility.log("this is name: %s", name);
//        mv.addObject("name", name);
//        return mv;
//    }
//
//    @GetMapping("/demo2")
//    public ModelAndView demoRoute2(HttpServletRequest request) {
//        //获得获得客户端信息
//        Utility.log("this is request: %s", request.getRequestURL());
//        Utility.log("this is 客户机的ip 地址: %s", request.getRemoteAddr());//客户机的ip 地址
//        Utility.log("this is 客户机的完整主机名: %s", request.getRemoteHost());//客户机的完整主机名。
//        Utility.log("this is 客户机所使用的网络端口号: %s", request.getRemotePort());//客户机所使用的网络端口号。
//        Utility.log("this is WEB服务器的IP地址: %s", request.getLocalAddr());//WEB服务器的IP地址。
//        Utility.log("this is WEB服务器的主机名: %s", request.getLocalName());//WEB服务器的主机名。
//        //获得客户端请求头 request header
//
//        Utility.log("this is Accept-Encoding : %s", request.getHeader("Accept-Encoding"));
////        Utility.log("this is 客户机的ip 地址: %s", request.getRemoteAddr());//客户机的ip 地址
////        Utility.log("this is 客户机的完整主机名: %s", request.getRemoteHost());//客户机的完整主机名。
//        Utility.log("this is get 请求 query 中的参数 : %s", request.getParameter("name"));//如果是 post 请求，getParameter里的参数名是由 input 输入框的"name"属性来决定的
//
//
//
//
//        String name = request.getParameter("name");
//        ModelAndView mv = new ModelAndView("hello");
//        mv.addObject("name", name);
//        return mv;
//    }
//
//    // 动态路由
//    // 如果访问 /demo3/bai 那么 bai 就会被当做参数传给路由函数
//    @GetMapping("/demo3/{name}")
//    public ModelAndView demoRoute3(@PathVariable String name) {
//        ModelAndView mv = new ModelAndView("hello");
//        mv.addObject("name", name);
//        return mv;
//    }
}
