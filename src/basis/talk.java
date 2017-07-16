package basis;

/**
 * Created by Big_Boss on 2017/6/2.
 */
public class talk {
    private String sign;
    private String content;
    private String release_time;
    private String user_name;

    public String getRelease_time() {
        return release_time;
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

    public void setContent(String content) {
        this.content = content;
    }

    public void setRelease_time(String release_time) {
        this.release_time = release_time;
    }

    public void setSign(String sign) {
        this.sign = sign;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }
}
