package com.security.SecurityDemo.Controller;


import com.security.SecurityDemo.Model.User;
import com.security.SecurityDemo.Service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class UserController {


    @Autowired
    private UserService service;

    @GetMapping("register")
    public User registerUser(@RequestBody User user){
        return service.saveUser(user);
    }
}
