package com.jobs.recruitment.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import java.util.Random;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.IOUtils;
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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.jobs.recruitment.function.StringUtils;
import com.jobs.recruitment.model.InfoSearch;
import com.jobs.recruitment.model.InforUser;
import com.jobs.recruitment.model.JobPost;
import com.jobs.recruitment.model.JobSeekerHis;
import com.jobs.recruitment.model.Login;
import com.jobs.recruitment.model.SignUp;
import com.jobs.recruitment.service.ActivityService;
import com.jobs.recruitment.service.JobService;
import com.jobs.recruitment.service.UserService;

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
	@Autowired
	private ActivityService activityService;
	@Autowired
	ServletContext context;
	// @Autowired
	// CustomFileValidator customFileValidator;

	@RequestMapping(value = "/")
	public String home(Model model) {
		return "redirect:/Home";
	}

	@RequestMapping(value = "/Home")
	public String findAll(Model model, Integer offset, Integer maxResults) {
		List<JobPost> listJobpost = jobService.findAll(offset, maxResults);
		model.addAttribute("count", jobService.count());
		model.addAttribute("offset", offset);
		model.addAttribute("listJobpost", listJobpost);
		model.addAttribute("inforSearch", new InfoSearch());
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
	@RequestMapping(value = "/Check-Login")
	public String checkLogin(@Validated @ModelAttribute("login") Login login, Model model,
			RedirectAttributes redirectAttributes) {
		if (userService.checkLogin(login) == 1) {
			Random random = new Random();
			int randomNumber = random.nextInt(9000) + 1000;
			redirectAttributes.addFlashAttribute("passCode", randomNumber); // send passcode to another controller
			redirectAttributes.addFlashAttribute("username", login.getUserName());
			redirectAttributes.addFlashAttribute("roleId", 1);

			return "redirect:/ShowViewRecruiter/" + login.getUserName() + "-" + randomNumber+"-1";
		} else if (userService.checkLogin(login) == 2) {
			Random random = new Random();
			int randomNumber = random.nextInt(9000) + 1000;
			model.addAttribute("username", login.getUserName());
			model.addAttribute("roleId", 2);
			return "redirect:/ViewSeeker/"+ login.getUserName()+"-" + randomNumber+"-2";
		}
		return "redirect:/Login";
	}

	/* SHOW VIEW RECRUITER */
	@RequestMapping(value = "/ShowViewRecruiter/{passCodeUser}")
	public String showViewRecruiter(@PathVariable String passCodeUser, Model model, Integer offset,
			Integer maxResults) {
		String[] temp = passCodeUser.split("-");
		String userName = temp[0];
		int passCode = Integer.parseInt(temp[1]);
		List<JobPost> listJobpost = jobService.searchAllJobpostByUserName(userName, offset, maxResults);
		List<JobSeekerHis> listJobSeekerHisNew = activityService.searchAllCV(offset, maxResults, userName, 0);
		model.addAttribute("username", userName);
		model.addAttribute("roleId", 1);
		model.addAttribute("listJobpost", listJobpost);
		model.addAttribute("count", this.jobService.count(userName));
		model.addAttribute("offset", offset);
		model.addAttribute("passCodeUser", userName + "-" + passCode+"-1");
		model.addAttribute("totalSeeker", listJobSeekerHisNew.size());
		return "Recruiter";
	}
	/*SHOW VIEW SEEKER*/
	@RequestMapping(value="/ViewSeeker/{passCodeUser}")
	public String showViewSeeker(@PathVariable String passCodeUser,Model model, Integer offset, Integer maxResults) {
		String[] temp = passCodeUser.split("-");
		String userName = temp[0];
		int passCode = Integer.parseInt(temp[1]);
		List<JobPost> listJobpost = jobService.findAll(offset, maxResults);
		model.addAttribute("count", jobService.count());
		model.addAttribute("offset", offset);
		model.addAttribute("listJobpost", listJobpost);
		model.addAttribute("inforSearch", new InfoSearch());
		model.addAttribute("username", userName);
		model.addAttribute("passCodeUser", passCodeUser);
		return "ViewSeeker";
	}

	/*SHOW VIEW SEEKER HIS*/
	@RequestMapping(value = "/ViewSeekerHis/{passCodeUser}")
	public String showViewSeekerHis(@PathVariable String passCodeUser, Model model) {
		String[] temp = passCodeUser.split("-");
		String userName = temp[0];
		int passCode = Integer.parseInt(temp[1]);
		List<Object []> listFeedBack = activityService.getListFeedBack(userName);
		model.addAttribute("username", userName);
		model.addAttribute("roleId", 2);
		model.addAttribute("getListFeedBack", listFeedBack);
		model.addAttribute("passCodeUser", passCodeUser);
		return "ViewSeekerHis";
	}
	/* Registration */
	@RequestMapping(value = "/Registration", method = RequestMethod.POST)
	public String registration(@Validated @ModelAttribute("registration") SignUp signUp,Model model) {
		if (this.userService.signUp(signUp) == true) {
			model.addAttribute("inforSearch", new InfoSearch());
			return "redirect:/";
		} else {
			return "redirect:/";
		}
	}

	/* SHOW NEW JOB FORM */
	@RequestMapping(value = "/NewJob/{passCodeUser}", method = RequestMethod.GET)
	public String newJob(Model model, @PathVariable String passCodeUser) {
		String[] temp = passCodeUser.split("-");
		String userName = temp[0];
		model.addAttribute("fileUploadModel", new JobPost());
		model.addAttribute("userName", userName);
		model.addAttribute("passCodeUser", passCodeUser);
		return "NewJob";

	}
	/* SAVE NEW JOB */
	@RequestMapping(value = "/SaveJob/{passCodeUser}", method = RequestMethod.POST)
	public String saveJob(@PathVariable String passCodeUser,Model model, @ModelAttribute JobPost jobPost, BindingResult bindingResult, Integer offset,
			Integer maxResults) {
		MultipartFile file = jobPost.getFile();
		System.out.println(file);
		if (bindingResult.hasErrors()) {
			return "/NewJob";
		}
		String fileName = file.getOriginalFilename();
		String imageNam = jobPost.getCompanyName();
		imageNam = imageNam.replace(" ", "");
		jobPost.setImage(StringUtils.removeAccent(imageNam) + ".png");
		path = Paths.get(
				"/Users/TuanTran/Desktop/ASSIGNMENT/Web/backend/code/Jobs-Recruiment/src/main/webapp/resources/theme/uploaded-images/"
						+ StringUtils.removeAccent(imageNam) + ".png");
		if (file != null && !file.isEmpty()) {
			try {
				file.transferTo(new File(path.toString()));
				this.jobService.newJob(jobPost);
				model.addAttribute("username", jobPost.getUserName());
				model.addAttribute("roleId", 1);
				List<JobPost> listJobpost = jobService.searchAllJobpostByUserName(jobPost.getUserName(), offset,
						maxResults);
				model.addAttribute("count", jobService.count(jobPost.getUserName()));
				model.addAttribute("offset", offset);
				model.addAttribute("listJobpost", listJobpost);
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
		return "redirect:/ShowViewRecruiter/"+passCodeUser;
	}

	/*---GET JOB POST BY ID---------*/
	@RequestMapping(value = "/Get-JobPost/{id}")
	public String getDevice(@PathVariable Long id, Model model) {
		JobPost jobPost = this.jobService.getJobPost(id);
		model.addAttribute("jobPost", jobPost);
		model.addAttribute("jobseekerHis", new JobSeekerHis());
		return "Job-single";
	}

	/*---GET JOB POST BY ID IN VIEW RECRUITER---------*/
	@RequestMapping(value = "/Get-JobPost-Recruiter/{id}/{passCodeUser}")
	public String getJobpost(@PathVariable Long id,@PathVariable String passCodeUser, Model model) {
		JobPost jobPost = this.jobService.getJobPost(id);
		model.addAttribute("jobPost", jobPost);
		model.addAttribute("passCodeUser", passCodeUser);
		return "JobSingleRecruiter";
	}

	/*---Search Job---*/
	@RequestMapping(value = "/Search", method = RequestMethod.POST)
	public String searchJob(@Validated @ModelAttribute("inforSearch") InfoSearch infoSearch, Model model) {
		List<JobPost> listJobpost = this.jobService.searchAllJobpostByType(infoSearch);
		System.out.println(listJobpost.size());
		model.addAttribute("listJobpost", listJobpost);
		return "Home";
	}
	/*---Search Job---*/
	@RequestMapping(value = "/Search/{passCodeUser}", method = RequestMethod.POST)
	public String searchJobInViewSeeker(@PathVariable String passCodeUser,@Validated @ModelAttribute("inforSearch") InfoSearch infoSearch, Model model) {
		String[] temp = passCodeUser.split("-");
		String userName = temp[0];
		int passCode = Integer.parseInt(temp[1]);
		List<JobPost> listJobpost = this.jobService.searchAllJobpostByType(infoSearch);
		System.out.println(listJobpost.size());
		model.addAttribute("listJobpost", listJobpost);
		model.addAttribute("username", userName);
		model.addAttribute("passCodeUser", userName + "-" + passCode+"-2");
		return "ViewSeeker";
	}

	/* APPLY JOB */
	@RequestMapping(value = "/ApplyJob", method = RequestMethod.POST)
	public String applyJob(Model model, @ModelAttribute("jobseekerHis") JobSeekerHis jobSeeker,
			BindingResult bindingResult) {
		MultipartFile file = jobSeeker.getFile();
		System.out.println(file);
		if (bindingResult.hasErrors()) {
			return "/";
		}
		String fileName = file.getOriginalFilename();
		String imageName = jobSeeker.getEmail() + "_" + jobSeeker.getPostId();
		imageName = imageName.replace(" ", "");
		jobSeeker.setCv(StringUtils.removeAccent(imageName) + ".pdf");
		path = Paths.get(
				"/Users/TuanTran/Desktop/ASSIGNMENT/Web/backend/code/Jobs-Recruiment/src/main/webapp/resources/theme/uploaded-cv/"
						+ StringUtils.removeAccent(imageName) + ".pdf");
		if (file != null && !file.isEmpty()) {
			try {
				file.transferTo(new File(path.toString()));
				this.activityService.applyJob(jobSeeker);
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

	/* LIST JOB SEEKER APPLY */
	@RequestMapping(value = "/getListCv/{passCodeUser}")
	public String getListCv(@PathVariable String passCodeUser, Model model, Integer offset, Integer maxResults,
			RedirectAttributes redirectAttributes) {
		String[] temp = passCodeUser.split("-");
		String userName = temp[0];
		List<JobSeekerHis> listJobSeekerHisNew = activityService.searchAllCV(offset, maxResults, userName, 0);
		List<JobSeekerHis> listJobSeekerHisOld = activityService.searchAllCV(offset, maxResults, userName, 1);
		model.addAttribute("countNew", activityService.count(userName, 0));
		model.addAttribute("offsetNew", offset);
		model.addAttribute("listJobSeekerHisNew", listJobSeekerHisNew);
		model.addAttribute("countOld", activityService.count(userName, 1));
		model.addAttribute("offsetOld", offset);
		model.addAttribute("listJobSeekerHisOld", listJobSeekerHisOld);
		model.addAttribute("userName", userName);
		model.addAttribute("passCodeUser", passCodeUser);
		return "InforJobSeekerApply";
	}

	/* SEND NOTIFICATION TO JOB_SEEKER */
	@RequestMapping(value = "/sendNofiToJobSeeker/{passCode}")
	public String sendNofiToJobSeeker(@PathVariable String passCode) {
		String[] temp = passCode.split("_");
		String passCodeUser=temp[0];
		Long id = Long.parseLong(temp[1]);
		JobSeekerHis jobSeekerHis = this.activityService.getJobSeeker(id);
		if (this.activityService.updateJobSeeker(jobSeekerHis) == true) {
			return "redirect:/getListCv/" + passCodeUser;
		}
		return null;
	}

	/* SHOW VIEW PROFILE */
	@RequestMapping(value = "/showProfile/{passCodeUser}")
	public String showProfile(@PathVariable String passCodeUser, Model model) {
		String[] temp = passCodeUser.split("-");
		String userName = temp[0];
		String role=temp[2];
		InforUser inforUser = this.userService.getInforUser(userName);
		System.out.println(inforUser.getUserName());
		model.addAttribute("inforUser", inforUser);
		model.addAttribute("passCodeUser", passCodeUser);
		model.addAttribute("roleId", role);
		return "Profile";
	}

	/* SAVE PROFILE AFTER EDIT */
	@RequestMapping(value = "/Save-Profile/{passCodeUser}", method = RequestMethod.POST)
	public String saveProfile(@PathVariable String passCodeUser, @ModelAttribute("inforUser") InforUser inforUser) {
		String[]temp=passCodeUser.split("-");
		String role=temp[2];
		if (this.userService.updateInforUser(inforUser) == true) {
			if(role.equals("1")) {
			return "redirect:/ShowViewRecruiter/" + passCodeUser;
			}
			else {
				return "redirect:/ViewSeeker/" + passCodeUser;
			}
		}
		return "redirect:/";
	}
	/*DOWNLOAD CV*/
	@RequestMapping(value="download/{email}/{postId}")
	public void getLogFile(@PathVariable String email,@PathVariable String postId,HttpSession session,HttpServletResponse response) throws Exception {
	    try {
	    	String fileName=email+"_"+postId;
	        String filePathToBeServed = "/Users/TuanTran/Desktop/ASSIGNMENT/Web/backend/code/Jobs-Recruiment/src/main/webapp/resources/theme/uploaded-cv/"+fileName+".pdf";
	        File fileToDownload = new File(filePathToBeServed);
	        InputStream inputStream = new FileInputStream(fileToDownload);
	        response.setContentType("application/force-download");
	        response.setHeader("Content-Disposition", "attachment; filename="+fileName+".pdf"); 
	        IOUtils.copy(inputStream, response.getOutputStream());
	        response.flushBuffer();
	        inputStream.close();
	    } catch (Exception e){
	        LOGGER.debug("Request could not be completed at this moment. Please try again.");
	        e.printStackTrace();
	    }

	}
//	public void download(@PathVariable String email,@PathVariable String postId,HttpServletRequest request, HttpServletResponse response) {
////		String[] temp = passCode.split("/");
////		String email=temp[0];
////		String postId=temp[1];
//		String fileName=email+"_"+postId;
//		System.out.println(fileName);
//		 try {
//	            // getting the path to file 
//				String dir = context.getRealPath("/Users/TuanTran/Desktop/ASSIGNMENT/Web/backend/code/Jobs-Recruiment/src/main/webapp/resources/theme/uploaded-cv/");
//	            Path file = Paths.get(dir, fileName);
//	            if(!Files.exists(file)){
//	                String errorMessage = "File you are trying to download does not exist on the server.";            
//	                OutputStream outputStream = response.getOutputStream();
//	                outputStream.write(errorMessage.getBytes(Charset.forName("UTF-8")));
//	                outputStream.close();
//	            }
//	            String mimeType= context.getMimeType(
//	              file.getFileName().toString());
//	            if(mimeType == null){
//	                mimeType = "application/octet-stream";
//	            }
//	            response.setContentType(mimeType);
//	            response.addHeader("Content-Disposition", "attachment; filename="+fileName);        
//	            Files.copy(file, response.getOutputStream());
//	        } catch (IOException e) {
//	            e.printStackTrace();
//	        }
//
//	}

	/* Test */
	@RequestMapping(value = "/test")
	public String test(Model model) {
		return "ViewSeeker";
	}
}
