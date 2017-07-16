package com;

/**
 * Created by Big_Boss on 2017/5/24.
 */

import com.Dao;
import java.util.ArrayList;
import java.util.List;
import java.sql.*;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;
import org.omg.PortableInterceptor.SUCCESSFUL;

public class hello {
    private String message;
    private List list=new ArrayList();
    private Dao dao=new Dao();
    public void setList()
    {
        ResultSet rs=dao.executeQuery("SELECT topic FROM news");
        try {
            while (rs.next()){

            }
        }catch (SQLException e){
            e.printStackTrace();
        }
    }
    public List getList(){
        return list;
    }
    public void setMessage(String message)
    {
        this.message = message;
    }
    private String getMessage(){
        return message;
    }
    public String execute()
    {
        if(message.equals("hhhh")) {
            message="new";
            return Action.SUCCESS;
        }
         else return Action.ERROR;
    }
}
