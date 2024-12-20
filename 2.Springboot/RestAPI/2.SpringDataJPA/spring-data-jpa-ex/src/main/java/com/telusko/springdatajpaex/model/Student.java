package com.telusko.springdatajpaex.model;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Component
@Scope("prototype")
@Entity //for creating student name table we have to give annotation of name Entity
public class Student {

	//properties 
	@Id //for creating primary we use@Id
	private int rollNo;
	private String name;
	private int marks;
	
	
	
	//getters and setters
	public int getRollNo() {
		return rollNo;
	}
	public void setRollNo(int rollNo) {
		this.rollNo = rollNo;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getMarks() {
		return marks;
	}
	public void setMarks(int marks) {
		this.marks = marks;
	}
}
