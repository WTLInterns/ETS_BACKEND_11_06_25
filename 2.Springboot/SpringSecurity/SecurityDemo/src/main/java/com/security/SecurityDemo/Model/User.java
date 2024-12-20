package com.security.SecurityDemo.Model;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;
import org.hibernate.service.spi.InjectService;


//@Table(name="userDb") if our className is different from database name we can write here our database name like @Table(name="")
@Data
@Entity
@Table(name = "users")
public class User {

    @Id
    private int id;
    private String username;
    private String password;

}
