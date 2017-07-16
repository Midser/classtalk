package basis;

/**
 * Created by Big_Boss on 2017/6/2.
 */
public class messages {
    private String topic;
    private String content;
    private String release_time;

    public void setRelease_time(String release_time) {
        this.release_time = release_time;
    }

    public void setTopic(String topic) {
        this.topic = topic;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getContent() {
        return content;
    }

    public String getRelease_time() {
        return release_time;
    }

    public String getTopic() {
        return topic;
    }
}
