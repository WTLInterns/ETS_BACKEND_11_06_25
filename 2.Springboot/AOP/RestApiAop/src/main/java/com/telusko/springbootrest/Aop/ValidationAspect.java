package com.telusko.springbootrest.Aop;


import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

@Component
@Aspect
public class ValidationAspect {
    private static final Logger logger= LoggerFactory.getLogger(ValidationAspect.class);
    @Around("execution(* com.telusko.springbootrest.service.JobService.getJob.(..)) && args(postId)")
    public Object validateAndUpdate(ProceedingJoinPoint jp,int postId) throws Throwable {

        if(postId < 0){
            postId = -postId;
        }
        Object obj=jp.proceed(new Object[] {postId});
        // we are using this method because if any user byMistakenly give negative input it will automatically convert into positive
        // also in proceed we have to return the new value which we have converted here proceed only takes two types of parameter
        //either empty or array so here we are returning our converted value that's why we are returning in array format
        return obj;
    }
}
