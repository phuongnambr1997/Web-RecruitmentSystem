package com.jobs.recruitment.service;

import com.jobs.recruitment.model.Login;
import com.jobs.recruitment.model.SignUp;

public interface UserService {
	
	boolean signUp(SignUp signUp);
	int checkLogin(Login login);
	
}
