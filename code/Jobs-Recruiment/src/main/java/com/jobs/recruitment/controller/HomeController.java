package com.jobs.recruitment.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.servlet.ServletContext;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.jobs.recruitment.function.StringUtils;
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
		return "redirect:/Home";
	}
	@RequestMapping(value = "/Home", method = RequestMethod.GET)
	public String findAll(Model model, Integer offset, Integer maxResults) {
		List<JobPost> listJobpost = jobService.findAll(offset, maxResults);
		model.addAttribute("count", jobService.count());
		model.addAttribute("offset", offset);
		model.addAttribute("listJobpost", listJobpost);
		return "Home";
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
			return "Home";
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
		String imageNam=jobPost.getCompanyName();
		imageNam = imageNam.replace(" " , ""); 
		jobPost.setImage(StringUtils.removeAccent(imageNam)+ ".png");
		path = Paths
				.get("/Users/TuanTran/Desktop/ASSIGNMENT/Web/backend/code/Jobs-Recruiment/src/main/webapp/resources/theme/uploaded-images/" +StringUtils.removeAccent(imageNam)+ ".png");
		if(file!=null&&!file.isEmpty()) {
			try {
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
	/*---GET DEVICE BY ID---------*/
	@RequestMapping(value = "/Get-JobPost/{id}")
	public String getDevice(@PathVariable Long id, Model model) {
		JobPost jobPost = this.jobService.getJobPost(id);
		model.addAttribute("jobPost", jobPost);
		return "Job-single";
	}
}
