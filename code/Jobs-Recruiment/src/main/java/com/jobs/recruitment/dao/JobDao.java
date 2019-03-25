package com.jobs.recruitment.dao;

import com.jobs.recruitment.model.JobPost;

public interface JobDao {

	public abstract boolean newJob(JobPost jobPost);
}
