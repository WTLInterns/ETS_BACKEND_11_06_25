package com.example.SpringBootWeb1;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.net.http.HttpRequest;
import java.net.http.HttpResponse;

@Controller // it is controller
public class HomeController {
    @RequestMapping("/") //this is for mapping we also have method like GetMapping and PostMapping
    public String home(){
        return "index.jsp";
    }
    @RequestMapping("add")
    public ModelAndView add(@RequestParam("num1") int num, int num2, ModelAndView mv){
        //here we have take num but the orginal id is num1 to declare num as num1 we can use
        //@RequestParam it will assign the value of num1 to num
        int result=num+num2;
        mv.addObject("result",result);
        mv.setViewName("result.jsp");
    return mv;
    }
    @RequestMapping("addAlien")
    public String addAlien(@ModelAttribute("alien") Alien alien){
        //model attribute automatically perform all the operation like set,get and tostring and give the ans
        // no need to create seprate class alien and all the getter setter methods
        // we can directly use and print the result here
        return"result.jsp";
    }
    //we can use model attribute top of the method as well in above use in argument but below we will use in above method
    @ModelAttribute("course")
    public String courseName(){
        return "java";
    }
}
