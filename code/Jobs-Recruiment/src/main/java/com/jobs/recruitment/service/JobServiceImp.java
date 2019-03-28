package com.jobs.recruitment.service;

import java.util.List;

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

	@Override
	public List<JobPost> findAll(Integer offset, Integer maxResult) {
		// TODO Auto-generated method stub
		return jobDao.searchAllJobpost(offset, maxResult);
	}

	@Override
	public Long count() {
		// TODO Auto-generated method stub
		return jobDao.count();
	}

}
