package org.example;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

//@Component("com2") // it is for setting bean name bydefault bean name is method name
@Component
@Scope("prototype")
public class Desktop implements Computer{
    @Override
    public void compile() {
        System.out.println("compiling through the Desktop");
    }
}
