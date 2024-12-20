package com.telusko.springdatajpaex;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import com.telusko.springdatajpaex.model.Student;
import java.util.List;


@Repository
//here the student is className Integer primary key's datatype
public interface StudentRepo extends JpaRepository<Student, Integer> {
    //if you want to declare some method by yourself and also if you want to fetch something by your choice
    //we can write like this here the @Query is denoting that we are writing queryCondition also instead
    //of table name we write class name and 1 here is denoting that for first parameterArgument
    //if we have multiple parameterArgument then we can call according to the number
    //also some queries can generate automatically like below query can also run by without writing query
    //Jpa repository automatically make the queries by detecting there name
    @Query("select s from Student s where s.name=?1")
    List<Student> findByName(String name);

    //for these query also it can automatically create the Query behind the scene
    List<Student>findByMarksGreaterThan(int marks);

}
