package com.jobs.recruitment.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jobs.recruitment.dao.UserDao;
import com.jobs.recruitment.model.Login;
import com.jobs.recruitment.model.SignUp;

@Service
@Transactional
public class UserServiceImp implements UserService {

	@Autowired
	private UserDao userDao;
	
	@Override
	public int checkLogin(Login login) {
		
		return userDao.checkLogIn(login);
	}

	@Override
	public boolean signUp(SignUp signUp) {
		// TODO Auto-generated method stub
		return userDao.signUp(signUp);
	}

}
