package com.docker.DockerSpring.Controller;

import com.docker.DockerSpring.Model.Student;
import com.docker.DockerSpring.Repo.StudentRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import java.util.List;

@RestController
public class StudentController {


    @Autowired
    StudentRepo repo;

    @GetMapping("/getstudent")
    public List<Student> getStudent(){
       return repo.findAll();
    }

}
