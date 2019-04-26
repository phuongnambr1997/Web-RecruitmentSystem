package com.jobs.recruitment.service;

import java.util.List;

import com.jobs.recruitment.model.JobSeekerHis;

public interface ActivityService {
	public abstract void applyJob(JobSeekerHis jobSeeker);

	public abstract List<JobSeekerHis> searchAllCV(Integer offset, Integer maxResult, String userName, int active);

	public abstract int count(String userName, int active);

	public abstract Boolean updateJobSeeker(JobSeekerHis jobSeeker);

	public abstract JobSeekerHis getJobSeeker(Long id);

	public abstract List<Object []> getListFeedBack(String userName);

}
