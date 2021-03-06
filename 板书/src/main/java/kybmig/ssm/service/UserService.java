package kybmig.ssm.service;


import kybmig.ssm.Utility;
import kybmig.ssm.mapper.UserMapper;
import kybmig.ssm.model.UserModel;
import kybmig.ssm.model.UserRole;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.List;

@Service
public class UserService {
    private UserMapper mapper;

    public UserService(UserMapper userMapper) {
        this.mapper = userMapper;
    }

    public UserModel add(String username, String password) {

        UserModel m = new UserModel();
        m.setUsername(username);
        m.setPassword(password);
        m.setRole(UserRole.normal);
//        m.setAvatar("https://www.kuaibiancheng.com/uploads/avatar/default.gif ");
        m.setAvatar("");
        m.setEmail("");
        m.setSignature("我忙着思考，以至于没有时间留下签名");

        Utility.log("UserService 的 add 函数中，这是新的用户 m：%s", m);
        mapper.insertUser(m);
        return m;
    }


//    public  void update(Integer id, String username, String password) {
//        UserModel m = new UserModel();
//        m.setId(id);
//        m.setUsername(username);
//        m.setPassword(password);
//       mapper.updateUser(m);
//    }

    public  void updateUserNameAndAvatar(Integer id, String username, String avatar, String signature) {
        UserModel m = new UserModel();
        m.setId(id);
        m.setUsername(username);
        m.setAvatar(avatar);
        m.setSignature(signature);
        Utility.log("马上 mapper and this is name %s", username);
        mapper.updateUserNameAndAvatar(m);
    }

    public  void updatePassword(Integer id, String password) {
        UserModel m = new UserModel();
        m.setId(id);
        m.setPassword(password);
        mapper.updatePassword(m);
    }





    public void deleteById(Integer id) {
        mapper.deleteUser(id);
    }


    public  UserModel findById(Integer id) {
        return mapper.selectUser(id);
    }


    public  UserModel findByUsername(String username) {
        return mapper.selectOnerByUsername(username);
    }

    public boolean validateLogin(String username, String password) {
        UserModel user = mapper.selectOnerByUsername(username);
        if (user != null && user.getPassword().equals(password)) {
            return true;
        } else {
            return false;
        }
    }


    public UserModel guest() {
        UserModel user = new UserModel();
        user.setRole(UserRole.guest);
        user.setId(-1);
        user.setUsername("游客");
        user.setPassword("游客");
        return user;
    }

//currentUser函数一执行，没有 seesion 或者说没有 id 的请求就会被返回游客身份
    public UserModel currentUser(HttpServletRequest request) {
        HttpSession session = request.getSession();
        //getAttribute("user_id"),用户正常登陆
        // 验证通过后就会setAttribute("user_id"),id如果是 null 说明没登录
        Integer id = (Integer) session.getAttribute("user_id");
        if (id == null) {
            return this.guest();
        }
        UserModel user = mapper.selectUser(id);
        if (user == null) {
            user = this.guest();
        }
        return user;
    }


    public  List<UserModel> all() {
        return mapper.selectAllUser();
    }
}
