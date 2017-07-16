package basis;

/**
 * Created by Big_Boss on 2017/6/5.
 */
public class user {
    private String userName;
    private String password;
    private String phoneNumber;
    private String state;

    public String getUserName() {
        return userName;
    }

    public String getPassword() {
        return password;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public String getState() {
        return state;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public void setState(String state) {
        if(state=="0") this.state = "正常";
        else this.state = "禁言";
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }
}
