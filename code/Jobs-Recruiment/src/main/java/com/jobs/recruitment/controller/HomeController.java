package com.jobs.recruitment.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jobs.recruitment.model.JobPost;
import com.jobs.recruitment.model.Login;
import com.jobs.recruitment.model.SignUp;
import com.jobs.recruitment.service.JobService;
import com.jobs.recruitment.service.UserService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private JobService jobService;
	
	@RequestMapping(value = "/")
	public String home(Model model) {
		return "index";
	}
	
	/*---SHOW LOGIN-------*/
	@RequestMapping(value = "/Login")
	public String showLogin(Model model) {
		model.addAttribute("login", new Login());
		return "login";
	}
	/*---SHOW SIGNUP-------*/
	@RequestMapping(value = "/SignUp")
	public String showSignUp(Model model) {
		model.addAttribute("registration", new SignUp());
		return "signup";
	}
	/*----CHECK LOGIN TRUE OR FASLE*/
	@RequestMapping(value = "/Check-Login", method = RequestMethod.POST)
	public String checkLogin(@Validated @ModelAttribute("login") Login login) {
		if (userService.checkLogin(login)==1) {
			return "index";
		}
		else if(userService.checkLogin(login)==2){
			return "home";
		}
		return "redirect:/Login";
	}
	/*Registration*/
	@RequestMapping(value = "/Registration",method=RequestMethod.POST)
	public String registration(@Validated @ModelAttribute("registration") SignUp signUp) {
		if(this.userService.signUp(signUp)==true) {
			return "home";
		}
		else {
			return "redirect:/";
		}
	}
	/*SHOW NEW JOB FORM*/
	@RequestMapping(value = "/NewJob")
	public String newJob(Model model) {
		model.addAttribute("newJob",new JobPost());
		return "NewJob";
	}
	
	/*SAVE NEW JOB*/
	@RequestMapping(value="/SaveJob",method=RequestMethod.POST)
	public String saveJob(@Validated @ModelAttribute("newJob") JobPost jobPost) {
		if(this.jobService.newJob(jobPost)==true) {
			return "home";
		}
		return "index";
	}
}
