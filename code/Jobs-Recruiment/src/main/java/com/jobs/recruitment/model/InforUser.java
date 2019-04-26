package com.jobs.recruitment.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity(name = "InforUser")
public class InforUser implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "username")
	private String userName;
	
	@Column(name = "email")
	private String email;

	@Column(name = "career")
	private String career;

	@Column(name = "name")
	private String name;

	@Column(name = "phone")
	private String phone;

	@Column(name = "address")
	private String address;

	@Column(name = "birthday")
	private String birthDay;

	@Column(name = "sex")
	private String sex;

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getBirthDay() {
		return birthDay;
	}

	public void setBirthDay(String birthDay) {
		this.birthDay = birthDay;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getCareer() {
		return career;
	}

	public void setCareer(String career) {
		this.career = career;
	}

}
