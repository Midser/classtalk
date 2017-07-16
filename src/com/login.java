package com;

/**
 * Created by Big_Boss on 2017/5/31.
 */
import com.UserAction;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class login extends ActionSupport {
    private UserAction userAction=new UserAction();
    private String username;
    private String password;
    private String state;
    public void setUsername(String username){
        this.username=username;
    }
    public void setPassword(String password){
        this.password=password;
    }
    public void setState(String state){
        this.state=state;
    }
    public String execute(){
        userAction.setUsername(username);
        userAction.setPassword(password);
        userAction.getStateSQL();
        if(userAction.login()==1) {
            ActionContext actionContext = ActionContext.getContext();
            Map session = actionContext.getSession();
            setState(userAction.getState());
            session.put("username", username);
            session.put("state",state);
            return "success";
        }
        else {
            ActionContext actionContext = ActionContext.getContext();
            Map session = actionContext.getSession();
            session.put("username", null);
            session.put("state","1");
            return "error";
        }
    }
}
