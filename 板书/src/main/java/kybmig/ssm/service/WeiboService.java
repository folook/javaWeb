package kybmig.ssm.service;


import kybmig.ssm.mapper.WeiboMapper;
import kybmig.ssm.model.ModelFactory;
import kybmig.ssm.model.WeiboModel;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class WeiboService {
    private WeiboMapper mapper;

    public WeiboService(WeiboMapper weiboMapper) {
        this.mapper = weiboMapper;
    }


//    public WeiboModel add(String content) {
//        ArrayList<WeiboModel> ms = load();
//
//
//        WeiboModel m = new WeiboModel();
//        m.setContent(content);
//        Integer id = ms.size() + 1;
//        m.setId(id);
//        ms.add(m);
//        save(ms);
//        return m;
//    }

    public WeiboModel add(String content) {
        WeiboModel m = new WeiboModel();
        m.setContent(content);
//        m.setUserId(userId);

        // Utility.log("topic add user: %s", m);
        mapper.insertWeibo(m);
        return m;
    }


//    public  void update(Integer id, String content) {
//        ArrayList<WeiboModel> todos = load();
//        for (int i = 0; i < todos.size(); i++) {
//            WeiboModel e = todos.get(i);
//            if (e.getId().equals(id)) {
//                e.setContent(content);
//            }
//        }
//        save(todos);
//    }

    public  void update(Integer id, String content) {
        WeiboModel m = new WeiboModel();
        m.setId(id);
        m.setContent(content);
        mapper.updateWeibo(m);
    }


    public void deleteById(Integer id) {
        mapper.deleteWeibo(id);
    }


    public  WeiboModel findById(Integer id) {
        return mapper.selectWeibo(id);
    }


    public List<WeiboModel> all() {
        return mapper.selectAllWeibo();
    }
//    public void deleteById(Integer id) {
//        ArrayList<WeiboModel> ms = load();
//
//        for (int i = 0; i < ms.size(); i++) {
//            WeiboModel e = ms.get(i);
//            if (e.getId().equals(id)) {
//                ms.remove(e);
//            }
//        }
//        save(ms);
//    }
//
//    public  WeiboModel findById(Integer id) {
//        ArrayList<WeiboModel> todos = load();
//        for (int i = 0; i < todos.size(); i++) {
//            WeiboModel e = todos.get(i);
//            if (e.getId().equals(id)) {
//                return e;
//            }
//        }
//        return null;
//    }
//
//    public  ArrayList<WeiboModel> all() {
//        return load();
//    }

    public ArrayList<WeiboModel> load() {
        String className = WeiboModel.class.getSimpleName();

        ArrayList<WeiboModel> ms = ModelFactory.load(className, 2, modelData -> {
            Integer id = Integer.valueOf(modelData.get(0));
            String content = modelData.get(1);

            WeiboModel m = new WeiboModel();
            m.setId(id);
            m.setContent(content);
            return m;
        });
        return ms;
    }

    public static void save(ArrayList<WeiboModel> list) {
        String className = WeiboModel.class.getSimpleName();
        ModelFactory.save(className, list, model -> {
            ArrayList<String> lines = new ArrayList<>();
            lines.add(model.getId().toString());
            lines.add(model.getContent());
            return lines;
        });
    }
}
