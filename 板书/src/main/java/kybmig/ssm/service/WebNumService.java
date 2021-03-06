package kybmig.ssm.service;


import kybmig.ssm.Utility;
import kybmig.ssm.mapper.WebNumMapper;
import kybmig.ssm.model.TodoModel;
import kybmig.ssm.model.WebNumModel;
import org.springframework.stereotype.Service;

@Service
public class WebNumService {
    private WebNumMapper mapper;

    public WebNumService(WebNumMapper webNumMapper) {
        this.mapper = webNumMapper;
    }

    public void addHomePageBrowserNum() {
        //取出浏览数
        WebNumModel m = this.findHomePageNum();
        if (m == null) {
            Utility.log("this is m: %s", m);
            Utility.log("计数君 1。5");

        } else  {
            Integer browserNum = m.getHomePageNum();
            //存入浏览数
            Utility.log("计数君 2");
            Integer newBrowserNum = browserNum + 1;
            m.setHomePageNum(newBrowserNum);
            mapper.updateHomePageNum(m);
        }
    }

    public void addIndexPageBrowserNum() {
        //取出浏览数
        WebNumModel m = this.findHomePageNum();
        if (m == null) {
            Utility.log("this is m: %s", m);
            Utility.log("计数君 1。5");

        } else  {
            Integer browserNum = m.getIndexPageNum();
            //存入浏览数
            Utility.log("计数君 2");
            Integer newBrowserNum = browserNum + 1;
            m.setIndexPageNum(newBrowserNum);
            mapper.updateIndexPageNum(m);
        }
    }

    public WebNumModel findHomePageNum() {
        WebNumModel m = mapper.findHomePageNum();
        return m;
    }



}
