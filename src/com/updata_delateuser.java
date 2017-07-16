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
public class updata_delateuser extends ActionSupport{
    private String name;
    private UserAction userAction=new UserAction();

    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }
    public String execute(){
        userAction.setUsername(name);
        userAction.delateUser();
        return null;
    }
}
