package com;

/**
 * Created by Big_Boss on 2017/6/6.
 */
import basis.talk;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

import java.util.ArrayList;
import java.util.List;
import java.sql.*;
public class load_talk_root extends ActionSupport{
    private Dao dao=new Dao();
    private List list=new ArrayList();

    public List getList() {
        return list;
    }

    public void setList(List list) {
        this.list = list;
    }
    public String execute(){
        String sql="SELECT * FROM talk ORDER BY release_time DESC";
        ResultSet rs=dao.executeQuery(sql);
        try {
            while (rs.next()){
                talk talk=new talk();
                talk.setContent(rs.getString("content"));
                talk.setRelease_time(rs.getString("release_time"));
                talk.setSign(rs.getString("sign"));
                talk.setUser_name(rs.getString("user_name"));
                list.add(talk);
            }
        }catch (SQLException e){
            e.printStackTrace();
            return Action.ERROR;
        }
        return Action.SUCCESS;
    }
}

