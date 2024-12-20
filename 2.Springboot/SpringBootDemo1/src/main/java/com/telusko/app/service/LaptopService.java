package com.telusko.app.service;

import com.telusko.app.repository.*;
import com.telusko.app.model.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LaptopService {
    @Autowired
    private LaptopRepository repository;
    public void addLaptop(Laptop lap){
        repository.save(lap);
        System.out.println("saved in database......");
    }

    public boolean isGoodForProgramming(Laptop lap){
        return true;
    }
}
