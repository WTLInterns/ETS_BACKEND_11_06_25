package org.example;
import org.example.config.Appconfig;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import static java.awt.SystemColor.desktop;

public class App
{
    public static void main( String[] args )
    {
        ApplicationContext context=new AnnotationConfigApplicationContext(Appconfig.class);// this is for java based config
//        ApplicationContext context=new ClassPathXmlApplicationContext("spring.xml"); // this is for xml based configuration
        Alien alien=context.getBean(Alien.class);
        alien.code();
        System.out.println(alien.getAge());
        Desktop dt=context.getBean(Desktop.class);
//        dt.compile();

//        this code is for xml approach and above for java based
//        //for creating container and after creating container object will also create here after the container creation
//        ApplicationContext context=new ClassPathXmlApplicationContext("spring.xml");
//        Alien obj=context.getBean("alien",Alien.class);
//        obj.code();

    }
}
