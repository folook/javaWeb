package kybmig.ssm.service;


import kybmig.ssm.mapper.TopicCommentMapper;
import kybmig.ssm.model.TopicCommentModel;
import org.springframework.stereotype.Service;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.List;

@Service
public class TopicCommentService {
    private TopicCommentMapper mapper;

    public TopicCommentService(TopicCommentMapper topicCommentMapper) {
        this.mapper = topicCommentMapper;
    }



    public List<TopicCommentModel> topicCommentList(Integer topicId) {
        return mapper.selectAllTopicCommentByTopicId(topicId);
    }

    public TopicCommentModel add(String topicComment, Integer topicId, Integer userId) {

        TopicCommentModel m = new TopicCommentModel();
        m.setContent(topicComment);
        m.setTopicId(topicId);
        m.setUserId(userId);
        Long unixTime = System.currentTimeMillis() / 1000L;
        m.setCreatedTime(unixTime);
        m.setUpdatedTime(unixTime);

        mapper.insertTopicComment(m);
        return m;
    }


    public  void update(Integer id, String content) {
        TopicCommentModel m = this.findById(id);
        m.setContent(content);
        Long unixTime = System.currentTimeMillis() / 1000L;
        m.setUpdatedTime(unixTime);
        mapper.updateTopicComment(m);
    }



    public void deleteById(Integer id) {
        mapper.deleteTopicComment(id);
    }


    public TopicCommentModel findById(Integer commentId) {
        return mapper.selectTopicComment(commentId);
    }



//
//
//    public  List<TopicModel> findAllTopicByBoardId(Integer boardId) {
//        return mapper.selectAllTopicByBoardId(boardId);
//    }
//
//    public  List<TopicModel> all() {
//        return mapper.selectAllTopic();
//    }
//
//    public List<TopicCommentModel> topicCommentList(Integer topicId) {
//        return topicCommentMapper.selectAllTopicCommentByTopicId(topicId);
//    }
}
