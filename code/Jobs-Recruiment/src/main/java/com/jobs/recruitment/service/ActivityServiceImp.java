package com.jobs.recruitment.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jobs.recruitment.dao.ActivityDao;
import com.jobs.recruitment.model.JobSeekerHis;

@Service
@Transactional
public class ActivityServiceImp implements ActivityService {

	@Autowired
	private ActivityDao activityDao;
	@Override
	public void applyJob(JobSeekerHis jobSeeker) {
		this.activityDao.applyJob(jobSeeker);	
	}
	@Override
	public List<JobSeekerHis> searchAllCV(Integer offset, Integer maxResult, String userName,int active) {
		// TODO Auto-generated method stub
		return this.activityDao.searchAllCV(offset, maxResult, userName,active);
	}
	@Override
	public int count(String userName,int active) {
		// TODO Auto-generated method stub
		return this.activityDao.count(userName,active);
	}
	@Override
	public Boolean updateJobSeeker(JobSeekerHis jobSeeker) {
		// TODO Auto-generated method stub
		return this.activityDao.updateJobSeeker(jobSeeker);
	}
	@Override
	public JobSeekerHis getJobSeeker(Long id) {
		// TODO Auto-generated method stub
		return this.activityDao.getJobSeeker(id);
	}
	@Override
	public List<Object []> getListFeedBack(String userName) {
		// TODO Auto-generated method stub
		return this.activityDao.getListFeedBack(userName);
	}
	

}
