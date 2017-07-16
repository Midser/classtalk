package com;

import com.opensymphony.xwork2.ActionSupport;

/**
 * Created by Big_Boss on 2017/6/7.
 */
import com.Dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.io.PrintWriter;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;

public class updata_vote extends ActionSupport{
    private String vote;
    private String sign;
    private String name;
    private Dao dao=new Dao();

    public void setSign(String sign) {
        this.sign = sign;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setVote(String vote) {
        this.vote = vote;
    }

    public String getSign() {
        return sign;
    }

    public String getVote() {
        return vote;
    }

    public String getName() {
        return name;
    }

    public String execute(){
        String namex="";
        String sqlVoteUp="UPDATE ballotBox SET oo=oo+1 WHERE sign="+sign;
        String sqlVoteDown="UPDATE ballotBox SET xx=xx+1 WHERE sign="+sign;
        String sqlVoteGetUser="SELECT name FROM voter WHERE sign=\""+sign+"\"";
        String sqlVoteSetUser="INSERT INTO voter VALUES ("+sign+",\""+name+"\")";
        ResultSet rs=dao.executeQuery(sqlVoteGetUser);
        try {
            while (rs.next()){
                if(name.equals(rs.getString("name")))
                    return Action.ERROR;
            }
            if ("1".equals(vote))
                dao.executeUpdate(sqlVoteUp);
            else
                dao.executeUpdate(sqlVoteDown);

            dao.executeUpdate(sqlVoteSetUser);

        }catch (SQLException e){
            e.printStackTrace();
        }
        return null;
    }
}
