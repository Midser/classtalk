package com;

/**
 * Created by Big_Boss on 2017/6/1.
 */
import basis.news;
import java.util.ArrayList;
import java.util.List;
import java.sql.*;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

public class load_news extends ActionSupport {
    private List list=new ArrayList();
    private Dao dao=new Dao();

    public List getList() {
        return list;
    }
    public void setList(List list) {
        this.list = list;
    }

    public String execute(){
        String sql="SELECT * FROM news ORDER BY release_time DESC";
        ResultSet rs=dao.executeQuery(sql);
        try {
            while (rs.next()){
                news news=new news();
                news.setTopic(rs.getString("topic"));
                news.setContent(rs.getString("content"));
                news.setRelease_time(rs.getString("release_time"));
                news.setOo(rs.getInt("oo"));
                news.setXx(rs.getInt("xx"));
                list.add(news);
            }
        }catch (SQLException e){
            e.printStackTrace();
            return Action.ERROR;
        }
        return Action.SUCCESS;
    }
}
