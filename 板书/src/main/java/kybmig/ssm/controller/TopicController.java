package kybmig.ssm.controller;

import kybmig.ssm.Utility;
import kybmig.ssm.model.TodoModel;
import kybmig.ssm.model.TopicCommentModel;
import kybmig.ssm.model.TopicModel;
import kybmig.ssm.model.UserModel;
import kybmig.ssm.service.TodoService;
import kybmig.ssm.service.TopicCommentService;
import kybmig.ssm.service.TopicService;
import kybmig.ssm.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class TopicController {
    private TopicCommentService topicCommentService;
    private TopicService topicService;
    private UserService userService;

    public TopicController(TopicService topicService, TopicCommentService topicCommentService, UserService userService) {
        this.topicService = topicService;
        this.topicCommentService = topicCommentService;
        this.userService = userService;
    }


    @GetMapping("/topic/create")
    public ModelAndView creat(HttpServletRequest request) {
        UserModel currentUser = userService.currentUser(request);

        ModelAndView m = new ModelAndView("topic_create");
        m.addObject("currentUser", currentUser);
        return m;
    }

    @PostMapping("/topic/add")
    public ModelAndView add(Integer boardId, String title, String content, HttpServletRequest request) {

        Utility.log("this is boardID %d, title: %s, content:%s", boardId, title, content);
        Utility.log("content: %s", content);
        UserModel currentUser = userService.currentUser(request);
        topicService.add(boardId, title, content, currentUser.getId());
//        ModelAndView m = new ModelAndView("redirect:/topic");
        return new ModelAndView("redirect:/topic"); // 跳转回topic 页面
    }

    @GetMapping("/topic/detail/{topicId}")
    public ModelAndView detail(@PathVariable Integer topicId, HttpServletRequest request) {
        TopicModel topic = topicService.findById(topicId);
        List<TopicCommentModel> comments = topicCommentService.topicCommentList(topicId);

        //以下两行是记录回复数和浏览数的
        topic.setBrowseNum(topic.getBrowseNum() + 1);
        topic.setReplyNum(comments.size());
        topicService.updateBrowseNumAndReplyNum(topicId, topic.getBrowseNum(), topic.getReplyNum());

        UserModel topicOwner = userService.findById(topic.getUserId());
        UserModel currentUser = userService.currentUser(request);
        ModelAndView mv = new ModelAndView("topic_detail_new");
        mv.addObject("currentUser", currentUser);
        mv.addObject("comments", comments);
        mv.addObject("topic", topic);
        mv.addObject("topicOwner", topicOwner);
//        if (comments.size() == 0) {
//            return mv;
//        } else {
//            for(TopicCommentModel comment:comments){
//                mv.addObject("comment", comment);
//                UserModel commentOwner = userService.findById(comment.getUserId());
//                mv.addObject("commentOwner", commentOwner);
//            }
//            return mv;
//        }
        return mv;

    }


    @GetMapping("/topic/edit")
    public ModelAndView edit(Integer id) {
        // TodoModel todo = todoService.findById(id);
        TopicModel topic = topicService.findById(id);
        ModelAndView m = new ModelAndView("topic_edit");
        m.addObject("topic", topic);
        return m;
    }



    @PostMapping("/topic/update")
    public ModelAndView update(Integer id, String title ,String content) {
        Utility.log("content: %s", content);
        // todoService.update(id, content);
        topicService.update(id, title, content);
        ModelAndView m = new ModelAndView("redirect:/topic");
        return m;
    }


    @GetMapping("/topic/delete")
    public ModelAndView delete(Integer id) {
        // Integer todoId = Integer.parseInt(id);
        // todoService.deleteById(id);
        topicService.deleteById(id);
        ModelAndView m = new ModelAndView("redirect:/topic");
        return m;
    }



    @GetMapping("/topic")
    public ModelAndView index(HttpServletRequest request) {

        // List<TodoModel> todos = todoService.all();
        List<TopicModel> topics = topicService.all();
        UserModel currentUser = userService.currentUser(request);
        // List<TodoModel> todos = todoService.allByMybatis();
//        ModelAndView m = new ModelAndView("topic_index");
        ModelAndView m = new ModelAndView("topic_index_new");
        m.addObject("topics", topics);
        m.addObject("currentUser", currentUser);
        return m;
    }
}
