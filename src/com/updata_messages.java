package com;
/**
 * Created by Big_Boss on 2017/6/5.
 */
import com.Dao;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;
import java.sql.*;
public class updata_messages extends ActionSupport {
    private String title;
    private String content;
    private Dao dao=new Dao();

    public void setContent(String content) {
        this.content = content;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public String getTitle() {
        return title;
    }

    public String execute(){
        String sql="INSERT INTO messages VALUES (\""+title+"\",\""+content+"\",now())";
        if(dao.executeUpdate(sql)==0) return Action.SUCCESS;
        else return Action.ERROR;
    }
}
