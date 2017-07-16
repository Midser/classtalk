package com;

/**
 * Created by Big_Boss on 2017/6/8.
 */
import com.UserAction;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class updata_replicator extends ActionSupport{
    private String name;
    private UserAction userAction=new UserAction();

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
    public String execute(){
        userAction.setUsername(name);
        if(userAction.replicator()==1)
            return Action.ERROR;
        return null;
    }
}
