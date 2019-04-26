package com.jobs.recruitment.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jobs.recruitment.dao.UserDao;
import com.jobs.recruitment.model.InforUser;
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

	@Override
	public boolean createInforUser(InforUser inforUser) {
		// TODO Auto-generated method stub
		return this.userDao.createInforUser(inforUser);
	}

	@Override
	public List<InforUser> listInforUser() {
		// TODO Auto-generated method stub
		return this.userDao.listInforUser();
	}

	@Override
	public Boolean updateInforUser(InforUser inforUser) {
		// TODO Auto-generated method stub
		return this.userDao.updateInforUser(inforUser);
	}

	@Override
	public InforUser getInforUser(String userName) {
		// TODO Auto-generated method stub
		return this.userDao.getInforUser(userName);
	}

}
