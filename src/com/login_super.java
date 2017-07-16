package com;

/**
 * Created by Big_Boss on 2017/6/5.
 */
import com.UserAction;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
public class login_super extends ActionSupport{
    private UserAction userAction=new UserAction();
    private String username;
    private String password;
    public void setUsername(String username){
        this.username=username;
    }
    public void setPassword(String password){
        this.password=password;
    }
    public String execute(){
        userAction.setUsername(username);
        userAction.setPassword(password);
        if(userAction.superlogin()==1) {
            ActionContext actionContext = ActionContext.getContext();
            Map session = actionContext.getSession();
            session.put("supername", username);
            return "success";
        }
        else return "error";
    }
}
