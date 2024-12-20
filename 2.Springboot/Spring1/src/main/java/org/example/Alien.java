package org.example;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Component;

@Component
public class Alien {
    private int age;
    private Computer com;
    private int salary;

    public Computer getCom() {
        return com;
    }
    @Autowired // it is wiring for connecting of an objects 
    @Qualifier("laptop")
    public void setCom(Computer com) {
        this.com = com;
    }
    public int getSalary() {
        return salary;
    }

    public void setSalary(int salary) {
        this.salary = salary;
    }

    public Alien(){
        System.out.println("Object create");
    }

//    public Alien(int age,Laptop lap,int salary){
//        this.age=age;
//        this.lap=lap;
//        this.salary=salary;
//    }
@Value("21") //injecting the value or default value for the age it is called setter injection
    public void setAge(int age){
        this.age=age;
    }

    public int getAge(){
        return this.age;
    }

    public void code(){
        System.out.println("coding");
        com.compile();
    }
}
