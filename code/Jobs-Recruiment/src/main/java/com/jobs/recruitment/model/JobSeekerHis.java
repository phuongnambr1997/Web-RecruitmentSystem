package com.jobs.recruitment.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;

@Entity
@Table(name = "jobseeker_his", schema = "SYS")
public class JobSeekerHis implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;

	@Column(name = "email")
	private String email;

	@Column(name = "postid")
	private int postId;

	@Column(name = "recruiter")
	private String recruiter;

	@Column(name = "cv")
	private String cv;

	@Column(name="active")
	private int active;
	
	@Column(name = "status")
	private String status;

	@Column(name = "feedback")
	private String feedBack;

	@Transient
	private MultipartFile file;

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getPostId() {
		return postId;
	}

	public void setPostId(int postId) {
		this.postId = postId;
	}

	public String getCv() {
		return cv;
	}

	public void setCv(String cv) {
		this.cv = cv;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getFeedback() {
		return feedBack;
	}

	public void setFeedback(String feedback) {
		this.feedBack = feedback;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}

	public String getRecruiter() {
		return recruiter;
	}

	public void setRecruiter(String recruiter) {
		this.recruiter = recruiter;
	}

	public int getActive() {
		return active;
	}

	public void setActive(int active) {
		this.active = active;
	}
	

}
