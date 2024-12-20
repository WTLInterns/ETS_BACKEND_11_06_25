package com.example.SpringBootWeb1;

import org.springframework.stereotype.Component;

@Component
public class Alien {
    private int aid;
    private String aname;

    public int getAid() {
        return aid;
    }

    public void setAid(int aid) {
        this.aid = aid;
    }

    public String getAname() {
        return aname;
    }

    @Override
    public String toString() {
        return "Alien{" +
                "aid=" + aid +
                ", aname='" + aname + '\'' +
                '}';
    }

    public void setAname(String name) {
        this.aname = name;
    }
}
