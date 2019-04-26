package com.jobs.recruitment.dao;

import java.util.List;

import com.jobs.recruitment.model.InfoSearch;
import com.jobs.recruitment.model.JobPost;

public interface JobDao {

	public abstract boolean newJob(JobPost jobPost);

	public abstract List<JobPost> searchAllJobpost(Integer offset, Integer maxResult);

	public abstract Long count();

	public abstract JobPost getJobPost(Long id);

	public abstract List<JobPost> searchAllJobpostByUserName(String userName,Integer offset, Integer maxResult);

	public abstract int count(String userName);

	public abstract List<JobPost> searchAllJobpostByType(InfoSearch inforSeach);

}
