package com.security.SecurityDemo.Controller;

import jakarta.servlet.http.HttpServletRequest;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {

    //spring security that is dependency automatically create login page in which login id is user
    // and password is written in console, after login it creates session id
    //we can set id and password in application.properties
    @GetMapping("hello")
    public String greet(HttpServletRequest request){
        return "hello world"+ request.getSession().getId();
    }
    @GetMapping("about")
    public String about(HttpServletRequest request){
    return "IT Vedant"+ request.getSession().getId();
    }
}
