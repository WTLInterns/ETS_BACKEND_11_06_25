package com.telusko.springdatajpaex;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;

import com.telusko.springdatajpaex.model.Student;

import java.util.Optional;

@SpringBootApplication
public class SpringDataJpaExApplication {

	public static void main(String[] args) {
	ApplicationContext context=	SpringApplication.run(SpringDataJpaExApplication.class, args);
	  Student s1= context.getBean(Student.class);
	  Student s2=context.getBean(Student.class);
	  Student s3=context.getBean(Student.class);

	  StudentRepo repo=context.getBean(StudentRepo.class);
	  
//	  s1.setRollNo(101);
//	  s1.setName("sahil");
//	  s1.setMarks(75);
//
//
//	  s2.setRollNo(102);
//	  s2.setName("Kiran");
//	  s2.setMarks(80);
//
//
//	  s3.setRollNo(103);
//	  s3.setName("Harsh");
//	  s3.setMarks(70);
//
//		it will update the data if we have previous data present for s1,s2,s3 but if the data is not
//		there then it will create the table and insert these data
//	  repo.save(s1);
//	  repo.save(s2);
//	  repo.save(s3);

		//for fetching for all the record
//		System.out.println(repo.findAll());
		//if you want to fetch the data for particular data we can search by primary key
//		System.out.println(repo.findById(103));
//		if you want to fetch data that is no present in the database you can fetch like these
//		Optional<Student> s=repo.findById(104);
//		System.out.println(s.orElse(new Student()));
//		System.out.println(repo.findByName("sahil"));
//		System.out.println(repo.findByMarksGreaterThan(20));
//      for deleting row we use,
//        repo.delete(s2);
	}

}
