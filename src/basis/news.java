package basis;

/**
 * Created by Big_Boss on 2017/6/1.
 */
public class news {
    private String topic;
    private String content;
    private String release_time;
    private int oo;
    private int xx;
    public String getTopic(){
        return topic;
    }
    public String getContent(){
        return content;
    }
    public String getRelease_time(){
        return release_time;
    }
    public int getOo(){
        return oo;
    }
    public int getXx(){
        return xx;
    }
    public void setContent(String content) {
        this.content = content;
    }

    public void setTopic(String topic) {
        this.topic = topic;
    }

    public void setRelease_time(String release_time) {
        this.release_time = release_time;
    }

    public void setOo(int oo) {
        this.oo = oo;
    }

    public void setXx(int xx) {
        this.xx = xx;
    }
}
