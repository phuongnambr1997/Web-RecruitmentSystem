package com.jobs.recruitment.dao;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Projections;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.jobs.recruitment.model.InfoSearch;
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
	
	@SuppressWarnings("unchecked")
	@Override
	public List<JobPost> searchAllJobpost(Integer offset, Integer maxResult) {
		// TODO Auto-generated method stub
		return sessionFactory.openSession().createCriteria(JobPost.class).setFirstResult(offset != null ? offset : 0)
				.setMaxResults(maxResult != null ? maxResult : 10).list();
	}
	@SuppressWarnings("unchecked")
	@Override
	public Long count() {
		return (Long) sessionFactory.openSession().createCriteria(JobPost.class).setProjection(Projections.rowCount())
				.uniqueResult();
	}
	@Override
	public JobPost getJobPost(Long id) {
		try {
			Session session = sessionFactory.getCurrentSession();
			JobPost model = session.byId(JobPost.class).load(id);
			return model;
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
		return null;
	}
	@Override /*dang xu ly*/
	public List<JobPost> searchAllJobpostByUserName(String userName,Integer offset, Integer maxResult) {
		Session session = this.sessionFactory.getCurrentSession();
		String hql="SELECT j FROM com.jobs.recruitment.model.JobPost j where j.userName=:username";
		Query query = session.createQuery(hql);
		query.setParameter("username",userName);
		List results=query.setFirstResult(offset != null ? offset : 0)
				.setMaxResults(maxResult != null ? maxResult : 10).list();
		return results;
	}
	@SuppressWarnings("unchecked") /*dang xu ly*/
	@Override
	public int count(String userName) {
		Session session = this.sessionFactory.getCurrentSession();
		String hql="SELECT COUNT(*) FROM com.jobs.recruitment.model.JobPost j where j.userName=:username";
		Query query = session.createQuery(hql);
		query.setParameter("username",userName);
		int count = ((Long)query.uniqueResult()).intValue();
		return count;
	}
	@Override
	public List<JobPost> searchAllJobpostByType(InfoSearch inforSeach) {
		Session session = this.sessionFactory.getCurrentSession();
		List<JobPost> jobPostsList =session.createQuery("from job_posts").list();
		List<JobPost> jobPostsListByType=new ArrayList<>();
		for(JobPost jobPost:jobPostsList)
		{
			if(inforSeach.getNameJob().equals("")) {
				if(inforSeach.getTypeJob().equals("") && inforSeach.getLocation().equals("")) {
					return jobPostsList;
				}
				else if(inforSeach.getTypeJob().equals("") && inforSeach.getLocation().equals(jobPost.getLocation())) {
					jobPostsListByType.add(jobPost);
				}
				else if(inforSeach.getTypeJob().equals(jobPost.getCareer()) && inforSeach.getLocation().equals("")){
					jobPostsListByType.add(jobPost);

				}
				else if(inforSeach.getTypeJob().equals(jobPost.getCareer()) && inforSeach.getLocation().equals(jobPost.getLocation())) {
					jobPostsListByType.add(jobPost);
				}
			}
			else {
				if(inforSeach.getNameJob().equals(jobPost.getJobName())&&inforSeach.getTypeJob().equals("") && inforSeach.getLocation().equals("")) {
					jobPostsListByType.add(jobPost);
				}
				else if(inforSeach.getNameJob().equals(jobPost.getJobName())&&inforSeach.getTypeJob().equals("") && inforSeach.getLocation().equals(jobPost.getLocation())) {
					jobPostsListByType.add(jobPost);
				}
				else if(inforSeach.getNameJob().equals(jobPost.getJobName())&&inforSeach.getTypeJob().equals(jobPost.getCareer()) && inforSeach.getLocation().equals("")){
					jobPostsListByType.add(jobPost);

				}
				else if(inforSeach.getNameJob().equals(jobPost.getJobName())&&inforSeach.getTypeJob().equals(jobPost.getCareer())&& inforSeach.getLocation().equals(jobPost.getLocation())) {
					jobPostsListByType.add(jobPost);
				}
			}
		}
		return jobPostsListByType;
	}
	
}
