package com.jobs.recruitment.model;

public class InfoSearch {

	private String nameJob;
	private String typeJob;
	private String location;
	private String userRole;

	public InfoSearch() {
	}

	public InfoSearch(String nameJob, String typeJob, String location, String userRole) {
		super();
		this.nameJob = nameJob;
		this.typeJob = typeJob;
		this.location = location;
		this.userRole = userRole;
	}

	public String getNameJob() {
		return nameJob;
	}

	public void setNameJob(String nameJob) {
		this.nameJob = nameJob;
	}

	public String getTypeJob() {
		return typeJob;
	}

	public void setTypeJob(String typeJob) {
		this.typeJob = typeJob;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getUserRole() {
		return userRole;
	}

	public void setUserRole(String userRole) {
		this.userRole = userRole;
	}

}
