package kybmig.ssm.service;


import kybmig.ssm.mapper.IpMapper;
import kybmig.ssm.model.IpModel;
import org.springframework.stereotype.Service;

@Service
public class IpService {
    private IpMapper mapper;


    public IpService(IpMapper ipMapper) {
        this.mapper = ipMapper;
    }



    public IpModel findIp(String ipAddr) {
        return mapper.selectIp(ipAddr);
    }

    public void addNewIp(String ipAddr) {
        IpModel m = new IpModel();
        Long unixTime = System.currentTimeMillis() / 1000L;
        m.setIpAddr(ipAddr);
        m.setLoginNum(1);
        m.setLoginTime(unixTime);//新加的
        mapper.insertIp(m);
    }

    public void updateOldIpAddNum(IpModel oldIp) {
        Long unixTime = System.currentTimeMillis() / 1000L;
        oldIp.setLoginTime(unixTime);
        oldIp.setLoginNum(oldIp.getLoginNum()+1);
        mapper.updateOldIpAddNum(oldIp);
    }


}
