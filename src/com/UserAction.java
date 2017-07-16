package com;

/**
 * Created by Big_Boss on 2017/5/31.
 */
import java.sql.*;
import com.Dao;
public class UserAction {
    private Dao dao = new Dao();
    private String username;
    private String password;
    private String phoneNumber;
    private String state;

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getState() {
        return state;
    }

    public String getPassword() {
        return password;
    }

    public String getUsername() {
        return username;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void getStateSQL(){
        String sql="SELECT state FROM user WHERE name=\""+username+"\"";
        ResultSet rs=dao.executeQuery(sql);
        try {
            rs.next();
            this.state=rs.getString("state");

        }catch (SQLException e){
            e.printStackTrace();
        }
    }

    public void setStateSQL(){
        if(state.equals("0")){
            String sql="UPDATE user SET state=1 WHERE name=\""+username+"\"";
            dao.executeUpdate(sql);
        }
        else {
            String sql="UPDATE user SET state=0 WHERE name=\""+username+"\"";
            dao.executeUpdate(sql);
        }
    }

    public int login() {
        String sql = "SELECT password FROM user WHERE name=\"" + username + "\";";
        ResultSet rs = dao.executeQuery(sql);
        try {
            rs.next();
            if (password.equals(rs.getString("password")))
                return 1;

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return 0;
    }

    public int superlogin() {
        String sql = "SELECT password FROM superuser WHERE name=\"" + username + "\";";
        ResultSet rs = dao.executeQuery(sql);
        try {
            rs.next();
            if (password.equals(rs.getString("password")))
                return 1;

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return 0;
    }

    public int register(){
        String sql="INSERT INTO user VALUES(\""+username+"\",\""+password+"\",\""+phoneNumber+"\",0)";
        return dao.executeUpdate(sql);
    }

    public int delateUser(){
        String sql="DELETE FROM user WHERE name=\""+username+"\"";
        return dao.executeUpdate(sql);
    }

    public int replicator(){
        String sql="SELECT name FROM user WHERE name=\""+username+"\"";
        ResultSet rs=dao.executeQuery(sql);
        try {
            rs.next();
            rs.getString("name");
            return 1;
        }catch (SQLException e){
            e.printStackTrace();
        }
        return 0;
    }
}