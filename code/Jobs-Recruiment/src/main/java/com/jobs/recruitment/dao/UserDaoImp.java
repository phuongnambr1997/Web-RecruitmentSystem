package com.jobs.recruitment.dao;

import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.jobs.recruitment.model.Login;
import com.jobs.recruitment.model.SignUp;
import com.jobs.recruitment.model.User;
@Repository
@Transactional
public class UserDaoImp implements UserDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public int checkLogIn(Login userLogin) {
		for(User userDB:this.listUser()) {
			if(userDB.getUsername().equals(userLogin.getUserName())&&userDB.getPassword().equals(userLogin.getPassWord()))
			{
				return userDB.getRoldid();
			}
		}
		return 0;
	}

	@Override
	public List<User> listUser() {
		Session session = sessionFactory.getCurrentSession();
	      CriteriaBuilder cb = session.getCriteriaBuilder();
	      CriteriaQuery<User> cq = cb.createQuery(User.class);
	      Root<User> root = cq.from(User.class);
	      cq.select(root);
	      Query<User> query = session.createQuery(cq);
	      return query.getResultList();
	}

	@Override
	public boolean signUp(SignUp signUp) {
		try {
			Session session = sessionFactory.getCurrentSession();
			// session.beginTransaction();
			User user=new User();
			user.setUsername(signUp.getUsername());
			user.setPassword(signUp.getPassword());
			user.setRoldid(signUp.getRoleId());
			session.save(user);
			// session.getTransaction().commit();
			System.out.println(signUp.getEmail());
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
			// TODO: handle exception
		}
	}



}
