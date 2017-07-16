package com;

/**
 * Created by Big_Boss on 2017/6/2.
 */
import com.opensymphony.xwork2.Action;

public class updata_talk {
    private String content;
    private String username;
    private Dao dao=new Dao();
    public String getUsername() {
        return username;
    }
    public String getContent() {
        return content;
    }
    public void setUsername(String username) {
        this.username = username;
    }
    public void setContent(String content) {
        this.content = content;
    }
    public String execute(){
        String sql="INSERT INTO talk (content,release_time,user_name) VALUES(\""+content+"\",now(),\""+username+"\")";
        if(dao.executeUpdate(sql)==0)return Action.SUCCESS;
        else return Action.ERROR;
    }
}
