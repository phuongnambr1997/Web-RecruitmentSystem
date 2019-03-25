package com.jobs.recruitment.dao;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.jobs.recruitment.model.JobPost;
@Repository
@Transactional
public class JobDaoImp implements JobDao {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public boolean newJob(JobPost jobPost) {
		try {
			Session session = sessionFactory.getCurrentSession();
			// session.beginTransaction();
			jobPost.setDate(this.getNow());
			jobPost.setStatus(0);
			session.save(jobPost);
			// session.getTransaction().commit();
			System.out.println(jobPost.getJobDes());
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
			// TODO: handle exception
		}
	}
	private String getNow()
	{
		SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
	    Date date = new Date();
	    return formatter.format(date).toString();
	}
}
