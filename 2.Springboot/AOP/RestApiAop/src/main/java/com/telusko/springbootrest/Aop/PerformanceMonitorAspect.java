package com.telusko.springbootrest.Aop;

import com.telusko.springbootrest.*;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

@Component
@Aspect
public class PerformanceMonitorAspect {
    private static final Logger logger= LoggerFactory.getLogger(PerformanceMonitorAspect.class);

    //here we are using @Around as advice because we will start if the execution get started and end execution get ended
    //that means we are around with the method, therfore we are using @Around and @Around always return an object
    //so if we use @Around we have to return an object,
    // we use these method for if we want to execute something while the execution is taking place
    @Around("execution(* com.telusko.springbootrest.service.JobService.getJob.(..))")
    public Object monitorTime(ProceedingJoinPoint jp) throws Throwable{
        long start=System.currentTimeMillis();

        Object obj =jp.proceed();

        long end=System.currentTimeMillis();

        logger.info("Time taken: "+(end-start)+" ms");
        return obj;
    }
}
