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

import com.jobs.recruitment.model.InforUser;
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
			InforUser inforUser=new InforUser();
			inforUser.setEmail(signUp.getEmail());
			inforUser.setUserName(signUp.getUsername());
			user.setUsername(signUp.getUsername());
			user.setPassword(signUp.getPassword());
			user.setRoldid(signUp.getRoleId());
			session.save(user);
			session.save(inforUser);
			// session.getTransaction().commit();
			System.out.println(signUp.getEmail());
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
			// TODO: handle exception
		}
	}

	@Override
	public boolean createInforUser(InforUser inforUser) {
		try {
			Session session = sessionFactory.getCurrentSession();
			// session.beginTransaction();
			
			session.save(inforUser);
			// session.getTransaction().commit();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
			// TODO: handle exception
		}
	}

	@Override
	public List<InforUser> listInforUser() {
		Session session = sessionFactory.getCurrentSession();
	      CriteriaBuilder cb = session.getCriteriaBuilder();
	      CriteriaQuery<InforUser> cq = cb.createQuery(InforUser.class);
	      Root<InforUser> root = cq.from(InforUser.class);
	      cq.select(root);
	      Query<InforUser> query = session.createQuery(cq);
	      return query.getResultList();
	}

	@Override
	public Boolean updateInforUser(InforUser inforUser) {
		try {
			Session session = sessionFactory.getCurrentSession();
			InforUser infor=new InforUser();
			infor.setName(inforUser.getName());
			infor.setAddress(inforUser.getAddress());
			infor.setBirthDay(inforUser.getBirthDay());
			infor.setCareer(inforUser.getCareer());
			infor.setPhone(inforUser.getPhone());
			infor.setSex(inforUser.getSex());
			session.update(inforUser);
			return true;
		} catch (Exception e) {
			e.getMessage();
			return false;
			// TODO: handle exception
		}
	}

	@Override
	public InforUser getInforUser(String userName) {
		try {
			Session session = sessionFactory.getCurrentSession();
			InforUser model = session.byId(InforUser.class).load(userName);
			return model;
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
		return null;
	}



}
