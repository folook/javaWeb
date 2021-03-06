package kybmig.ssm.controller;

import kybmig.ssm.model.BoardModel;
import kybmig.ssm.model.TopicModel;
import kybmig.ssm.model.UserModel;
import kybmig.ssm.service.BoardService;
import kybmig.ssm.service.TopicService;
import kybmig.ssm.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class BoardController {

    private BoardService boardService;
    private TopicService topicService;
    private UserService userService;

    public BoardController(BoardService boardService, TopicService topicService,UserService userService) {
        this.boardService = boardService;
        this.topicService = topicService;
        this.userService = userService;
    }

    @GetMapping("/topic/board/{boardId}")
    public ModelAndView BoardIndex(@PathVariable Integer boardId, HttpServletRequest request) {//取到动态路由里的 id
        List<TopicModel> boardTopic = topicService.findAllTopicByBoardId(boardId);
        BoardModel board = boardService.findByBoardId(boardId);
        UserModel currnetUser = userService.currentUser(request);
//        Utility.log("this is", board.getId());
        ModelAndView mv = new ModelAndView("board_new");
        mv.addObject("board", board);
        mv.addObject("currentUser", currnetUser);
        mv.addObject("boardTopic", boardTopic);
        return mv;
    }

}
