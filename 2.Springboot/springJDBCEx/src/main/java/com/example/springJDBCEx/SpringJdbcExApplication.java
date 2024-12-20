package com.example.springJDBCEx;

import com.example.springJDBCEx.model.Student;
import com.example.springJDBCEx.service.StudentService;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;

import java.util.List;

@SpringBootApplication
public class SpringJdbcExApplication {
	public static void main(String[] args) {
		ApplicationContext context=SpringApplication.run(SpringJdbcExApplication.class, args);
		Student student =context.getBean(Student.class);
		student.setMarks(45);
		student.setName("Sahil");
		student.setRollNo(15);
		StudentService service=context.getBean(StudentService.class);
		service.addStudent(student);

		List<Student>students=service.getStudents();
		System.out.println(students);
	}

}
