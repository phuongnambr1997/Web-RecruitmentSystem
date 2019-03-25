package com.jobs.recruitment.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jobs.recruitment.dao.JobDao;
import com.jobs.recruitment.model.JobPost;

@Service
@Transactional
public class JobServiceImp implements JobService {

	@Autowired
	private JobDao jobDao;
	
	@Override
	public boolean newJob(JobPost jobPost) {
		// TODO Auto-generated method stub
		return jobDao.newJob(jobPost);
	}

}
