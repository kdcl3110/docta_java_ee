package com.doctor.bean;

public class User {
	
	private int userId;
	private String name;
	private String phone;
	private String email;
	private String pwd;
	
	public User() {}
	
	public User(int userId, String name, String phone, String email, String pwd) {
		super();
		this.userId = userId;
		this.name = name;
		this.phone = phone;
		this.email = email;
		this.pwd = pwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	@Override
	public String toString() {
		return "User [name=" + name + ", phone=" + phone + ", email=" + email + ", pwd=" + pwd + "]";
	}
	
}
