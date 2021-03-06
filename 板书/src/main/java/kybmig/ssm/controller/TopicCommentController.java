package kybmig.ssm.controller;

import kybmig.ssm.Utility;
import kybmig.ssm.model.TopicCommentModel;
import kybmig.ssm.model.UserModel;
import kybmig.ssm.service.TopicCommentService;
import kybmig.ssm.service.TopicService;
import kybmig.ssm.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Controller
public class TopicCommentController {

    private UserService userService;
    private TopicCommentService topicCommentService;

    public TopicCommentController(UserService userService, TopicCommentService topicCommentService) {
        this.userService = userService;
        this.topicCommentService = topicCommentService;
    }


    @PostMapping("/topic/comment/add")
    public ModelAndView add(String topicComment, Integer topicId, HttpServletRequest request) {
        Utility.log("topicComment: %s", topicComment);
        UserModel currentUser = userService.currentUser(request);
        topicCommentService.add(topicComment, topicId, currentUser.getId());
        String redirect = String.format("redirect:/topic/detail/%s", topicId);
        return new ModelAndView(redirect); // 跳转回topic 页面
    }
//
//
//
//
    @GetMapping("/topic/comment/edit")
    public ModelAndView edit(Integer id) {
        TopicCommentModel topicComment = topicCommentService.findById(id);
        ModelAndView m = new ModelAndView("topic_comment_edit_new");
        m.addObject("topicComment", topicComment);
        return m;
    }
//
    @PostMapping("/topic/comment/update")
    public ModelAndView update(Integer id,String content) {
        Utility.log("content: %s", content);
        // todoService.update(id, content);
        topicCommentService.update(id, content);
        TopicCommentModel topicComment = topicCommentService.findById(id);
        String redirect = String.format("redirect:/topic/detail/%s", topicComment.getTopicId());
        return new ModelAndView(redirect); // 跳转回topic 页面
    }
////
////
    @GetMapping("/topic/comment/delete")
    public ModelAndView delete(Integer id) {
        // Integer todoId = Integer.parseInt(id);
        // todoService.deleteById(id);
        TopicCommentModel topicComment = topicCommentService.findById(id);
        String redirect = String.format("redirect:/topic/detail/%s", topicComment.getTopicId());
        topicCommentService.deleteById(id);
        return new ModelAndView(redirect); // 跳转回topic 页面
    }


}
