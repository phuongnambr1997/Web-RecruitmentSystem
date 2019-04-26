package com.jobs.recruitment.service;

import java.util.List;

import com.jobs.recruitment.model.InforUser;
import com.jobs.recruitment.model.Login;
import com.jobs.recruitment.model.SignUp;

public interface UserService {

	public abstract boolean signUp(SignUp signUp);

	public abstract int checkLogin(Login login);

	public abstract boolean createInforUser(InforUser inforUser);

	public abstract List<InforUser> listInforUser();

	public abstract Boolean updateInforUser(InforUser inforUser);

	public abstract InforUser getInforUser(String userName);
}
