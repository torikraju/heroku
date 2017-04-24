package com.noticeBoard.user;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name = "user_roles")
public class UserRole {

	@Id
	@GeneratedValue(generator = "system-uuid")
	@GenericGenerator(name = "system-uuid", strategy = "uuid")
	@Column(name = "user_role_id")
	private String userroleid;

	@ManyToOne
	@JoinColumn(name = "userid")
	private User user;

	@Column(name = "role")
	private String role;

	public UserRole() {

	}

	public UserRole(String role) {
		this.role = role;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public String getUserroleid() {
		return userroleid;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public void setUserroleid(String userroleid) {
		this.userroleid = userroleid;
	}

	@Override
	public String toString() {
		return "UserRole [role=" + role + "]";
	}
	
	


}
