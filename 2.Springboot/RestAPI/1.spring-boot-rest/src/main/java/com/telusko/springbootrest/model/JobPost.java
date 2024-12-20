package com.telusko.springbootrest.model;
import java.util.List;
import org.springframework.stereotype.Component;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
//if we create data class then no need to create getter and setter
@NoArgsConstructor
//for calling no argument constructor automatically
@AllArgsConstructor
//for calling all the paramaterize constructor automatically
@Component
//usually component is used to define that we are gone use these class in another file also
//it is like compulsory annotation
public class JobPost {
	private int postId;
	private String postProfile; 
	private String postDesc;
	private Integer reqExperience;
	private List<String> postTechStack;
}
