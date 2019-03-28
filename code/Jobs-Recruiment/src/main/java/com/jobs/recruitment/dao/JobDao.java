package com.jobs.recruitment.dao;

import java.util.List;

import com.jobs.recruitment.model.JobPost;

public interface JobDao {

	public abstract boolean newJob(JobPost jobPost);

	public abstract List<JobPost> searchAllJobpost(Integer offset, Integer maxResult);

	public abstract Long count();

}
