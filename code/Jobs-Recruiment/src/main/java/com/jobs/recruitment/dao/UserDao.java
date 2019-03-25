package com.jobs.recruitment.dao;

import java.util.List;

import com.jobs.recruitment.model.Login;
import com.jobs.recruitment.model.SignUp;
import com.jobs.recruitment.model.User;

public interface UserDao {
	
	public abstract boolean signUp(SignUp signUp);
	public abstract int checkLogIn(Login login);
	public abstract List<User> listUser();	
}
