package com;

/**
 * Created by Big_Boss on 2017/6/6.
 */
import com.UserAction;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
public class updata_banned extends ActionSupport{
    private UserAction userAction=new UserAction();
    private String name;

    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }
    public String execute(){
        userAction.setUsername(name);
        userAction.getStateSQL();
        userAction.setStateSQL();
        return null;
    }
}
