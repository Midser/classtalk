package com;

/**
 * Created by Big_Boss on 2017/6/5.
 */
import basis.user;
import java.util.ArrayList;
import java.util.List;
import java.sql.*;

import com.opensymphony.xwork2.Action;

public class load_user {
    private List list=new ArrayList();
    private Dao dao=new Dao();

    public List getList() {
        return list;
    }

    public void setList(List list) {
        this.list = list;
    }

    public String execute(){
        String sql="SELECT * FROM user";
        ResultSet rs=dao.executeQuery(sql);
        try {
            while (rs.next()){
                user user=new user();
                user.setUserName(rs.getString("name"));
                user.setPassword(rs.getString("password"));
                user.setPhoneNumber(rs.getString("phoneNumber"));
                user.setState(rs.getString("state"));
                list.add(user);
            }
        }catch (SQLException e){
            e.printStackTrace();
            return Action.ERROR;
        }
        return Action.SUCCESS;
    }
}
