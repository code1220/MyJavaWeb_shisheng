package com.zzg.entity;

import java.util.Date;

public class User {

	private int id;
	private String username;
	private String password;
	private String role;
	private String sex;
	private String email;
	private String phone;
	private Date birthady;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
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
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public Date getBirthady() {
		return birthady;
	}
	public void setBirthady(Date birthady) {
		this.birthady = birthady;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + username + ", password="
				+ password + ", role=" + role + ", sex=" + sex + ", email="
				+ email + ", phone=" + phone + ", birthady=" + birthady + "]";
	}
	
}
