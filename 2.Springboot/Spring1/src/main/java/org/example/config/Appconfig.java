package org.example.config;

import org.example.Alien;
import org.example.Computer;
import org.example.Desktop;
import org.example.Laptop;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Scope;

@Configuration // this  annotatio is for declare that we are configuring here
@ComponentScan("org.example") // this is for the component should scan from these package
public class Appconfig {


//    @Bean
//    public Alien alien(@Autowired @Qualifier("laptop") Computer com){
//        //HERE AUTOWIRED IS OPTIONAL IF WE DIDN'T WRITE IT WILL AUTOMATICALLY CALL AUTOWIRE
//        //IN QUALIFIER ALWAYS PUT THE NAME OF BEAN WHICH OBJECT SHOULD GET PREFERENCE
//        Alien obj=new Alien();
//        obj.setAge(45);
//        obj.setCom(com);
//        return obj;
//    }
//    @Bean
//    public Laptop laptop(){
//        Laptop obj=new Laptop();
//        return obj;
//    }
////    @Bean(name = "com") // this for making bean and naming the bean if didn't mention bean then it will give method name to bean name
//    @Bean
////    @Scope("prototype") //by default our scope is singleton for creating multiple object we have to declare scope as prototype
//    public Desktop desktop(){
//        return new Desktop();
//    }

}
