package com.jdbc.SpringDataRestDemo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class SpringDataRestWebDemoApplication {

	public static void main(String[] args) {
		SpringApplication.run(SpringDataRestWebDemoApplication.class, args);
		// this is springDataRest in which, if we want to update and delete the data from
		// the database without going to database we can start the application and
		// go to the postman and update and delete the data we know how to do in restApplication
	}
}
