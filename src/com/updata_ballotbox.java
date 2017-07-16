package com;

/**
 * Created by Big_Boss on 2017/6/7.
 */
import com.Dao;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
public class updata_ballotbox {
    private String topic;
    private String content;
    private String promulgator;
    private String deadline;
    private Dao dao=new Dao();

    public void setTopic(String topic) {
        this.topic = topic;
    }

    public void setPromulgator(String promulgator) {
        this.promulgator = promulgator;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public void setDeadline(String deadline) {
        this.deadline = deadline;
    }

    public String getContent() {
        return content;
    }

    public String getDeadline() {
        return deadline;
    }

    public String getPromulgator() {
        return promulgator;
    }

    public String getTopic() {
        return topic;
    }
    public String execute(){
        String sql="INSERT INTO ballotbox (topic,content,release_time,promulgator,deadline,oo,xx) VALUES (\""+topic+"\",\""+content+"\",now(),\""+promulgator+"\",\""+deadline+"\",0,0)";
        if(dao.executeUpdate(sql)==0)return Action.SUCCESS;
        else return Action.ERROR;
    }
}
