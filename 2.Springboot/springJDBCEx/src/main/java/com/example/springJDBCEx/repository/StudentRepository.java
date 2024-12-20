package com.example.springJDBCEx.repository;

import com.example.springJDBCEx.model.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@Repository
public class StudentRepository {
    private JdbcTemplate jdbc;

    public JdbcTemplate getJdbc() {
        return jdbc;
    }
    @Autowired
    public void setJdbc(JdbcTemplate jdbc) {
        this.jdbc = jdbc;
    }

    public void save(Student student){
        String sql="insert into student (rollNo,name,marks) values(?,?,?)";
        int rowAffected=jdbc.update(sql,student.getRollNo(),student.getName(),student.getMarks());
        System.out.println("RowsAffected:- "+ rowAffected);
    }

    public List<Student>  findAll() {
      String sql="select * from Student";
      return jdbc.query(sql,(rs,rowNum)->{
          Student student=new Student();
          student.setRollNo(rs.getInt("rollNo"));
          student.setName(rs.getString("name"));
          student.setMarks(rs.getInt("marks"));
          return student;
      });
    }
}

