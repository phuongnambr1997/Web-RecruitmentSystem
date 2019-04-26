package com.jobs.recruitment.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jobs.recruitment.dao.JobDao;
import com.jobs.recruitment.model.InfoSearch;
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

	@Override
	public JobPost getJobPost(Long id) {
		// TODO Auto-generated method stub
		return jobDao.getJobPost(id);
	}

	@Override
	public List<JobPost> searchAllJobpostByUserName(String username,Integer offset, Integer maxResult) {
		return jobDao.searchAllJobpostByUserName(username,offset,maxResult);
	}

	@Override
	public List<JobPost> searchAllJobpostByType(InfoSearch inforSeach) {
		// TODO Auto-generated method stub
		return this.jobDao.searchAllJobpostByType(inforSeach);
	}

	@Override
	public int count(String username) {
		// TODO Auto-generated method stub
		return this.jobDao.count(username);
	}

}
