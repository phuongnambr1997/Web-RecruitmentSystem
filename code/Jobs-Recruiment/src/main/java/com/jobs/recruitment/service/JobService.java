package com.jobs.recruitment.service;

import java.util.List;

import com.jobs.recruitment.model.JobPost;

public interface JobService {
	public abstract boolean newJob(JobPost jobPost);

	public abstract List<JobPost> findAll(Integer offset, Integer maxResult);

	public abstract Long count();

	public abstract JobPost getJobPost(Long id);
	public abstract List<JobPost> searchAllJobpostByUserName(String username);

}
