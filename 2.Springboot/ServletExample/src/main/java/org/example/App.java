package org.example;

import org.apache.catalina.Context;
import org.apache.catalina.LifecycleException;
import org.apache.catalina.startup.Tomcat;

public class App {
    public static void main( String[] args ) throws LifecycleException {
        Tomcat tomcat=new Tomcat();
//        tomcat.setPort(8080); for setting the port no byde
        Context context=tomcat.addContext("",null);
        //(1st parameter is for application name and 2nd is for directory)
        //(" ") it means it is default application name and null means we don't want to create directory
        tomcat.addServlet(context,"HelloServlet",new HelloServlet());
        context.addServletMappingDecoded("/hello","HelloServlet");

        tomcat.start();
        tomcat.getServer().await();
    }
}
