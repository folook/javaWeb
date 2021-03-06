package kybmig.ssm.model;

import java.util.List;

public class TopicCommentModel extends BaseModel {
    private Integer id;
    private String content;
    private Integer userId;
    private Integer topicId;
    private Long createdTime;
    private Long updatedTime;
    private UserModel commentOwner;

    public UserModel getCommentOwner() {
        return commentOwner;
    }

    public void setCommentOwnerList(UserModel commentOwner) {
        this.commentOwner = commentOwner;
    }



    public Long getCreatedTime() {
        return createdTime;
    }

    public void setCreatedTime(Long createdTime) {
        this.createdTime = createdTime;
    }

    public Long getUpdatedTime() {
        return updatedTime;
    }

    public void setUpdatedTime(Long updatedTime) {
        this.updatedTime = updatedTime;
    }


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getTopicId() {
        return topicId;
    }

    public void setTopicId(Integer topicId) {
        this.topicId = topicId;
    }
}
