package org.example;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

@Component
@Scope("prototype")
public class Laptop implements Computer {
    public void compile(){
        System.out.println("compiling from laptop");
        }
}
