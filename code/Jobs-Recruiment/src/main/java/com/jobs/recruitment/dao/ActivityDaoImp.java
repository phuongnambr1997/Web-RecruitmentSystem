package com.jobs.recruitment.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.jobs.recruitment.model.JobSeekerHis;

@Repository
@Transactional
public class ActivityDaoImp implements ActivityDao {

	@Autowired
	private SessionFactory sessionFactory;
	@Override
	public void applyJob(JobSeekerHis jobSeeker) {
		try {
			Session session = sessionFactory.getCurrentSession();
			// session.beginTransaction();
			jobSeeker.setFeedback("Wait For FeedBack!");
			jobSeeker.setActive(0);
			session.save(jobSeeker);
			// session.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
		
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<JobSeekerHis> searchAllCV(Integer offset, Integer maxResult,String userName,int active) {
		Session session = this.sessionFactory.getCurrentSession();
		String hql="SELECT j FROM com.jobs.recruitment.model.JobSeekerHis j WHERE j.recruiter=:recruiter AND j.active=:active";
		Query query = session.createQuery(hql);
		query.setParameter("recruiter",userName);
		query.setParameter("active",active);
		List results=query.setFirstResult(offset != null ? offset : 0)
				.setMaxResults(maxResult != null ? maxResult : 10).list();
		return results;
	}
	@SuppressWarnings("unchecked")
	@Override
	public int count(String userName,int active) {
		Session session = this.sessionFactory.getCurrentSession();
		String hql="SELECT COUNT(*) FROM com.jobs.recruitment.model.JobSeekerHis j WHERE j.recruiter=:recruiter AND j.active=:active";
		Query query = session.createQuery(hql);
		query.setParameter("active",active);
		query.setParameter("recruiter",userName);
		int count = ((Long)query.uniqueResult()).intValue();
		return count;
	}
	@Override
	public Boolean updateJobSeeker(JobSeekerHis jobSeeker) {
		try {
			Session session = sessionFactory.getCurrentSession();
			jobSeeker.setStatus("Seen");
			jobSeeker.setFeedback("We received your CV! We will contact you soon!");
			jobSeeker.setActive(1);
			session.update(jobSeeker);
			return true;
		} catch (Exception e) {
			e.getMessage();
			return false;
			// TODO: handle exception
		}
	}
	@Override
	public JobSeekerHis getJobSeeker(Long id) {
		try {
			Session session = sessionFactory.getCurrentSession();
			JobSeekerHis model = session.byId(JobSeekerHis.class).load(id);
			return model;
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
		return null;
	}
	@Override
	public List<Object []> getListFeedBack( String userName) {
		Session session = this.sessionFactory.getCurrentSession();
		String hqlGetEmail="SELECT inforUser.email FROM com.jobs.recruitment.model.InforUser inforUser WHERE inforUser.userName=:userName";
		Query q = session.createQuery(hqlGetEmail);
		q.setParameter("userName", userName);
		String email=(String) q.getSingleResult();
		String hql="SELECT jobHis.id,jobPost.jobName,jobPost.companyName,jobHis.feedBack FROM com.jobs.recruitment.model.JobSeekerHis jobHis,com.jobs.recruitment.model.JobPost jobPost WHERE jobHis.postId=jobPost.id AND jobHis.email=:email";
		Query query = session.createQuery(hql);
		query.setParameter("email",email);
		List<Object []> getListFeedBack =query.list();
		return getListFeedBack;
	}

}
