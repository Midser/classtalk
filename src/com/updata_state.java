package com;

/**
 * Created by Big_Boss on 2017/6/5.
 */
import com.UserAction;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

import java.sql.*;
public class updata_state extends ActionSupport{
    private String name;
    private UserAction useraction=new UserAction();

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String execute(){
        useraction.setUsername(name);
        useraction.setStateSQL();
        return Action.SUCCESS;
    }
}
