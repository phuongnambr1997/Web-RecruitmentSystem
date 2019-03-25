package com.jobs.recruitment.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity(name = "user")
public class User implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Id
	@Column(name = "username")
	private String username;
	
	@Column(name="password")
	private String password;
	@Column(name="roleid")
	private int roleid;
	
	
	
	public User() {
		super();
	}
	
	public User(String username, String password, int roleid) {
		super();
		this.username = username;
		this.password = password;
		this.roleid = roleid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getRoldid() {
		return roleid;
	}
	public void setRoldid(int roldid) {
		this.roleid = roldid;
	}
	
	
}
