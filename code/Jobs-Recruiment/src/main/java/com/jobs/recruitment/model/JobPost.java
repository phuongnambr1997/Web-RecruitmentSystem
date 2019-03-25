package com.jobs.recruitment.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity(name = "job_posts")
public class JobPost implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	
	@Column(name="company_name")
	private String companyName;
	
	@Column(name="job_name")
	private String jobName;
	
	@Column(name="job_description")
	private String jobDes;
	
	@Column(name="job_recruitment")
	private String jobRe;
	
	@Column(name="employment_status")
	private String emplStatus;
	
	@Column(name="offer")
	private String offer;
	
	@Column(name="experience_level")
	private String expLevel;
	
	@Column(name="skill")
	private String skill;
	
	@Column(name="referred_language")
	private String refLang;
	
	@Column(name="company_size")
	private String companySize;
	
	@Column(name="status")
	private int status;
	
	@Column(name="location")
	private String location;
	
	@Column(name="infor_contact")
	private String inforContact;
	
	@Column(name="date")
	private String date;
	
	@Column(name="email")
	private String email;
	
	@Column(name="image")
	private String image;

	public JobPost() {
		super();
	}

	public JobPost(Long id, String companyName, String jobName, String jobDes, String jobRe, String emplStatus,
			String offer, String expLevel, String skill, String refLang, String companySize, int status,
			String location, String inforContact, String date, String email, String image) {
		super();
		this.id = id;
		this.companyName = companyName;
		this.jobName = jobName;
		this.jobDes = jobDes;
		this.jobRe = jobRe;
		this.emplStatus = emplStatus;
		this.offer = offer;
		this.expLevel = expLevel;
		this.skill = skill;
		this.refLang = refLang;
		this.companySize = companySize;
		this.status = status;
		this.location = location;
		this.inforContact = inforContact;
		this.date = date;
		this.email = email;
		this.image = image;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public String getJobName() {
		return jobName;
	}

	public void setJobName(String jobName) {
		this.jobName = jobName;
	}

	public String getJobDes() {
		return jobDes;
	}

	public void setJobDes(String jobDes) {
		this.jobDes = jobDes;
	}

	public String getJobRe() {
		return jobRe;
	}

	public void setJobRe(String jobRe) {
		this.jobRe = jobRe;
	}

	public String getEmplStatus() {
		return emplStatus;
	}

	public void setEmplStatus(String emplStatus) {
		this.emplStatus = emplStatus;
	}

	public String getOffer() {
		return offer;
	}

	public void setOffer(String offer) {
		this.offer = offer;
	}

	public String getExpLevel() {
		return expLevel;
	}

	public void setExpLevel(String expLevel) {
		this.expLevel = expLevel;
	}

	public String getSkill() {
		return skill;
	}

	public void setSkill(String skill) {
		this.skill = skill;
	}

	public String getRefLang() {
		return refLang;
	}

	public void setRefLang(String refLang) {
		this.refLang = refLang;
	}

	public String getCompanySize() {
		return companySize;
	}

	public void setCompanySize(String companySize) {
		this.companySize = companySize;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getInforContact() {
		return inforContact;
	}

	public void setInforContact(String inforContact) {
		this.inforContact = inforContact;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}
	
	
}
