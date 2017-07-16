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
public class register extends ActionSupport{
    private UserAction userAction=new UserAction();
    private String name;
    private String password;
    private String mobile;

    public String getName() {
        return name;
    }

    public String getMobile() {
        return mobile;
    }

    public String getPassword() {
        return password;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    public String execute(){
        userAction.setUsername(name);
        userAction.setPassword(password);
        userAction.setPhoneNumber(mobile);
        if(userAction.register()==0) return Action.SUCCESS;
        else return Action.ERROR;
    }
}
