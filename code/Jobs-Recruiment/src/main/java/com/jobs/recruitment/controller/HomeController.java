package com.jobs.recruitment.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.servlet.ServletContext;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.jobs.recruitment.model.JobPost;
import com.jobs.recruitment.model.Login;
import com.jobs.recruitment.model.SignUp;
import com.jobs.recruitment.service.JobService;
import com.jobs.recruitment.service.UserService;
//import com.jobs.recruitment.validator.CustomFileValidator;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger LOGGER = LoggerFactory.getLogger(HomeController.class);
	private ServletContext servletContext;
	private Path path;
	@Autowired
	private UserService userService;
	
	@Autowired
	private JobService jobService;
	
//	@Autowired
//	CustomFileValidator customFileValidator;
	
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
	@RequestMapping(value = "/NewJob",method = RequestMethod.GET)
	public String newJob(Model model) {
		model.addAttribute("fileUploadModel", new JobPost());
		return "NewJob";

	}
	
	/*SAVE NEW JOB*/
	@RequestMapping(value="/SaveJob",method=RequestMethod.POST)
	public String saveJob(Model model,@ModelAttribute JobPost jobPost, BindingResult bindingResult) {
		MultipartFile file=jobPost.getFile();
//		customFileValidator.validate(file, bindingResult);
		System.out.println(file);
		if (bindingResult.hasErrors()) {
			return "/NewJob";
		}
		String fileName = file.getOriginalFilename();
		System.out.println(fileName);
		jobPost.setImage(fileName);
		path = Paths
				.get("/Users/TuanTran/Desktop/uploaded-images/" +jobPost.getCompanyName()+ ".png");
		if(file!=null&&!file.isEmpty()) {
			try {
				System.out.println("ok");
				file.transferTo(new File(path.toString()));
				this.jobService.newJob(jobPost);
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
		return "redirect:/?success=1";
	}
}
