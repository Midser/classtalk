package com;

/**
 * Created by Big_Boss on 2017/6/7.
 */
import basis.ballotbox;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

import java.util.ArrayList;
import java.util.List;
import java.sql.*;
public class load_ballotbox extends ActionSupport{
    private Dao dao=new Dao();
    private List list=new ArrayList();

    public List getList() {
        return list;
    }

    public void setList(List list) {
        this.list = list;
    }

    public String execute(){
        String sql="SELECT * FROM ballotbox ORDER BY release_time DESC";
        ResultSet rs=dao.executeQuery(sql);
        try {
            while (rs.next()){
                ballotbox ballotbox=new ballotbox();
                ballotbox.setSign(rs.getString("sign"));
                ballotbox.setTopic(rs.getString("topic"));
                ballotbox.setContent(rs.getString("content"));
                ballotbox.setRelease_time(rs.getString("release_time"));
                ballotbox.setPromulgator(rs.getString("promulgator"));
                ballotbox.setDeadline(rs.getString("deadline"));
                ballotbox.setOo(rs.getString("oo"));
                ballotbox.setXx(rs.getString("xx"));
                list.add(ballotbox);
            }
        }catch (SQLException e){
            e.printStackTrace();
            return Action.ERROR;
        }
        return Action.SUCCESS;
    }
}
