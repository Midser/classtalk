package com;

/**
 * Created by Big_Boss on 2017/6/6.
 */
import com.Dao;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
public class updata_dalateSpeech extends ActionSupport{
    private String sign;
    private Dao dao=new Dao();

    public String getSign() {
        return sign;
    }

    public void setSign(String sign) {
        this.sign = sign;
    }
    public String execute(){
        String sql="DELETE FROM talk WHERE sign="+sign;
        dao.executeUpdate(sql);
        return null;
    }
}
