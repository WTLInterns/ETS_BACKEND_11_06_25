package com.example.springJDBCEx.service;

import com.example.springJDBCEx.model.Student;
import com.example.springJDBCEx.repository.StudentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StudentService {
    private StudentRepository repository;

    public StudentRepository getRepository() {
        return repository;
    }
    @Autowired
    public void setRepository(StudentRepository repository) {
        this.repository = repository;
    }

    public void addStudent(Student student){
            repository.save(student);
    }

    public List<Student> getStudents() {
        return repository.findAll();
    }
}
