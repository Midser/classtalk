package basis;

/**
 * Created by Big_Boss on 2017/6/2.
 */
public class talking {
    private String sign;
    private String content;
    private String user_name;

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public void setSign(String sign) {
        this.sign = sign;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getContent() {
        return content;
    }

    public String getSign() {
        return sign;
    }

    public String getUser_name() {
        return user_name;
    }
}
