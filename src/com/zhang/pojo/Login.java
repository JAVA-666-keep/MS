package com.zhang.pojo;

import java.io.Serializable;

public class Login implements Serializable {
    private  String uname;
    private  String pwd;

    @Override
    public String toString() {
        return "Login{" +
                "uname='" + uname + '\'' +
                ", pwd='" + pwd + '\'' +
                '}';
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public Login() {
    }

    public Login(String uname, String pwd) {
        this.uname = uname;
        this.pwd = pwd;
    }
}
