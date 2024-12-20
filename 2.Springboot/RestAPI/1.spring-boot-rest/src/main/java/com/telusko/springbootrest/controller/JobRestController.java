package com.telusko.springbootrest.controller;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import com.telusko.springbootrest.model.JobPost;
import com.telusko.springbootrest.service.JobService;
//Rest control is basically sending a data directly we know in previous time we were sending html files
//but if we want to send the data directly that method is called rest(representative state transfer)
//the four main  annotation are @GetMapping @PostMapping @PutMapping @DeleteMapping
//@GeMapping is use for the retrival of data for declaring that this is REST method
//we have to declare method as @ResponseBody, instead of declaring @ResponseBody we should declare
// @RestController at the top of class, if we declare @RestController then no need declare @ResponseBody
//also for connecting this data to frontend applications like react or angular we have to declare @CrossOrigin
//@CrossOrigin(origins="url for localhost and port no")
//@PostMapping is used for creating or inserting the data from client we have to declare @RequestBody
//because we are requesting data from client.
//@PutMapping is used for update the data

@RestController	//it is defiing that whatever you are returning is data or a body
@CrossOrigin(origins="http://localhost:3000") // this is b=for security purpose to connect with the react
public class JobRestController {
	
	@Autowired
	private JobService service;
	
//	@GetMapping(path="jobPosts",produces={"application/json"}) it will send data in json format usually we don't use this type
	//of notation but your data in xml format and we have to send particular method in json format then we use this annotation
	@GetMapping("jobPosts")
	//@ResponseBody this annotation is used for telling that we are (returning)responding data not any page
	//also we can directly do that by declaring @RestController at the above class
	public List<JobPost> getAllJobs() {
		return service.getAllJobs();
		
	}
	@GetMapping("jobPost/{postId}")
	public JobPost getJob(@PathVariable("postId") int postId){ //@PathVariable is used to read what is written in {}
		return service.getJob(postId);
	}
//	@PostMapping(path="jobPost" ,consumes="application/xml")// postman will only accept data in xml format
	@PostMapping("jobPost")
	public JobPost addJob(@RequestBody JobPost job){             //@RequestBody is used for declaring that we are
		service.addJobPost(job);                                // asking for data from client like here we are
		return  service.getJob(job.getPostId());                // asking user to fill the data about job
	}
	@PutMapping("jobPost") // here in url we are using jobPost because the annotation is @PutMapping
	public JobPost updateJob(@RequestBody JobPost jobPost){
		service.updateJob(jobPost);
		return service.getJob(jobPost.getPostId());
	}
	@DeleteMapping("jobPost/{postId}")
	public String deleteJob(@PathVariable("postId")int postId){
		service.deleteJob(postId);
		return "deleted";
	}
}
