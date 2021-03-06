package kybmig.ssm.service;


import com.mysql.cj.jdbc.MysqlDataSource;
import jdk.jshell.execution.Util;
import kybmig.ssm.Utility;
import kybmig.ssm.mapper.TodoMapper;
import kybmig.ssm.mapper.TopicCommentMapper;
import kybmig.ssm.mapper.TopicMapper;
import kybmig.ssm.model.ModelFactory;
import kybmig.ssm.model.TopicCommentModel;
import kybmig.ssm.model.TopicModel;
import org.springframework.stereotype.Service;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

@Service
public class TopicService {
//    private static TopicMapper mapper;
    private TopicMapper mapper;
    private TopicCommentMapper topicCommentMapper;


    public TopicService(TopicMapper topicMapper) {
        this.mapper = topicMapper;
    }

    public  List<TopicModel> findAllTopicByBoardId(Integer boardId) {
        return mapper.selectAllTopicByBoardId(boardId);
    }

    public TopicModel add(Integer boardId, String title, String content, Integer userId) {
        TopicModel m = new TopicModel();
        Long unixTime = System.currentTimeMillis() / 1000L;
        m.setTitle(title);
        m.setContent(content);
        m.setUserId(userId);
        m.setBoardId(boardId);//新加的
        m.setCreatedTime(unixTime);
        m.setUpdatedTime(unixTime);
        m.setBrowseNum(0);
        m.setReplyNum(0);
        mapper.insertTopic(m);
        return m;
    }


    public  void update(Integer id, String title, String content) {
//        TopicModel m = new TopicModel();
        TopicModel m = this.findById(id);
        Long unixTime = System.currentTimeMillis() / 1000L;
        m.setContent(content);
        m.setTitle(title);
        m.setUpdatedTime(unixTime);
        mapper.updateTopic(m);
    }


    public  void updateBrowseNumAndReplyNum(Integer id, Integer browseNum, Integer replyNum) {
        TopicModel m = this.findById(id);
        m.setBrowseNum(browseNum);
        m.setReplyNum(replyNum);
        mapper.updateBrowseNumAndReplyNum(m);
    }


    public void deleteById(Integer id) {
        mapper.deleteTopic(id);
    }



    public TopicModel findById(Integer id) {
        return mapper.selectTopic(id);
    }


    public  List<TopicModel> all() {
        return mapper.selectAllTopic();
    }

//    public List<TopicCommentModel> topicCommentList(Integer topicId) {
//        return topicCommentMapper.selectAllTopicCommentByTopicId(topicId);
//    }
}
