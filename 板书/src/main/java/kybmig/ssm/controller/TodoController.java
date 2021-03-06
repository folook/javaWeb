package kybmig.ssm.controller;
import kybmig.ssm.Utility;
import kybmig.ssm.mapper.TodoMapper;
import kybmig.ssm.model.TodoModel;
import kybmig.ssm.service.TodoService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import java.util.List;

@Controller
public class TodoController {

    private TodoService todoService;

    public TodoController(TodoService todoService) {
        this.todoService = todoService;
    }


    @PostMapping("/todo/add")
    public ModelAndView add(String content) {
        Utility.log("content: %s", content);
//        todoService.add(content);
        todoService.add(content);
        ModelAndView m = new ModelAndView("redirect:/todo");
        return m;
    }


    @PostMapping("/todo/update")
    public ModelAndView update(Integer id, String content) {
        Utility.log("content: %s", content);
        // todoService.update(id, content);
        todoService.update(id, content);
        ModelAndView m = new ModelAndView("redirect:/todo");
        return m;
    }


    @GetMapping("/todo/delete")
    public ModelAndView delete(Integer id) {
        // Integer todoId = Integer.parseInt(id);
        // todoService.deleteById(id);
        todoService.deleteById(id);
        ModelAndView m = new ModelAndView("redirect:/todo");
        return m;
    }


    @GetMapping("/todo/edit")
    public ModelAndView edit(Integer id) {
        // TodoModel todo = todoService.findById(id);
        TodoModel todo = todoService.findById(id);
        ModelAndView m = new ModelAndView("todo_edit");
        m.addObject("todo", todo);
        return m;
    }


    @GetMapping("/todo")
    public ModelAndView index() {
        Utility.log("todo index");
        // List<TodoModel> todos = todoService.all();
        List<TodoModel> todos = todoService.allByMybatis();
        // List<TodoModel> todos = todoService.allByMybatis();
        ModelAndView m = new ModelAndView("todo_index");
        m.addObject("todos", todos);
        return m;
    }
}
