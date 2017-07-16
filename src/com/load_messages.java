package com;

/**
 * Created by Big_Boss on 2017/6/2.
 */
import basis.messages;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

import java.util.ArrayList;
import java.util.List;
import java.sql.*;
public class load_messages extends ActionSupport{
    private Dao dao=new Dao();
    private List list=new ArrayList();

    public void setList(List list) {
        this.list = list;
    }

    public List getList() {
        return list;
    }
    public String execute(){
        String sql="SELECT * FROM messages ORDER BY release_time DESC";
        ResultSet rs=dao.executeQuery(sql);
        try {
            while (rs.next()){
                messages messages=new messages();
                messages.setTopic(rs.getString("topic"));
                messages.setContent(rs.getString("content"));
                messages.setRelease_time(rs.getString("release_time"));
                list.add(messages);
            }
        }catch (SQLException e){
            e.printStackTrace();
            return Action.ERROR;
        }
        return Action.SUCCESS;
    }
}
