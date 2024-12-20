package com.telusko.springbootrest.Aop;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.*;
import org.slf4j.LoggerFactory;
import org.slf4j.Logger;
import org.springframework.stereotype.Component;

@Component
@Aspect
public class LoggingAspect {
    private static final Logger logger= LoggerFactory.getLogger(LoggingAspect.class);
//    return type , fullClassName.method-name(arguments) here we are taking all the returnType,className that's why we are taking *
//    (..) this is take any no of argument.
    @Before("execution(* com.telusko.springbootrest.service.JobService.getJob.(..)) || execution(* com.telusko.springbootrest.service.JobService.updateJob.(..))")
    public void logMethodCall(JoinPoint jp){
        logger.info("Method called before"+jp.getSignature().getName());
        //    in the above method @Aspect is aspect  @Before is our advice and in bracket front of @Before is pointcut getJob is our target

    }
    @After("execution(* com.telusko.springbootrest.service.JobService.getJob.(..)) || execution(* com.telusko.springbootrest.service.JobService.updateJob.(..))")
    public void logMethodExecuted(JoinPoint jp){
        logger.info("Method called after"+jp.getSignature().getName());
        //    in the above method @Aspect is aspect  @After is our advice and in bracket front of @After is pointcut getJob is our target4
        //   @After acts like finally, it will always executed
    }
    @AfterThrowing("execution(* com.telusko.springbootrest.service.JobService.getJob.(..)) || execution(* com.telusko.springbootrest.service.JobService.updateJob.(..))")
    public void logMethodCrash(JoinPoint jp){
        logger.info("Method crash"+jp.getSignature().getName());
        //    in the above method @Aspect is aspect  @AfterThrowing is our advice and in bracket front of @AfterThrowing is pointcut getJob is our target4
        //   AfterThrowing execute after thrwoing an exception
    }
    @AfterReturning("execution(* com.telusko.springbootrest.service.JobService.getJob.(..)) || execution(* com.telusko.springbootrest.service.JobService.updateJob.(..))")
    public void logMethodSucced(JoinPoint jp){
        logger.info("Method Succeed "+jp.getSignature().getName());
        //    in the above method @Aspect is aspect  @AfterReturning is our advice and in bracket front of @AfterReturning is pointcut getJob is our target4
        //   AfterReturning execute after successfully completed the execution
    }


//    1> Join Point(When):- when you want to be happen
//    2> Advice (what):-what you want to be happen like after,before,afterThrowing,afterReturning
//    3> Aspect(Where-coceptual)
//    4> Pointcut(Where-Operational):- is expression in which we are writing class, return type, argument etc.
//    5>Target object(Whom) :- targetObject is like method name that we are targeting like here we are targeting getJob,updateJob
//    6>Weaving(How) all these connection are happening at runtime
//    7>proxy(The Double) all the target object wrap with proxy object
//    8>Type of Advice
}
