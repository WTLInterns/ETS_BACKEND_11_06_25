package com.security.SecurityDemo.Controller;


import com.security.SecurityDemo.Model.Student;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.security.web.csrf.CsrfToken;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@RestController
public class StudentController {
    List<Student> studentList=new ArrayList<>(List.of(
            new Student(1,"sahil","java"),
            new Student(2,"rushi","python")
            ));

    //if we use spring security then everytime when we use @PostMapping means if we want to update the data or insert the data
    //Through postman then we have to insert our CSRF-TOKEN in headers of postman the key is X-CSRF-TOKEN
    // and value is generating here
    @GetMapping("csrf-token")
    public CsrfToken getCsrfToken(HttpServletRequest request){
        return (CsrfToken) request.getAttribute("_csrf");
    }

    @GetMapping("students")
    public List<Student> getStudent(){
        return studentList;
    }

    @PostMapping("students")
    public void addStudent(@RequestBody Student student){
        studentList.add(student);
    }
}
