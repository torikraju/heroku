package com.noticeBoard.user;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.Size;

import org.hibernate.annotations.GenericGenerator;
import org.hibernate.validator.constraints.NotEmpty;

import com.noticeBoard.customAnnotation.Username;
import com.noticeBoard.customAnnotation.ValidEmail;
import com.noticeBoard.model.Notice;
import com.noticeBoard.model.Profile;

@Entity
@Table(name = "users")
public class User implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(generator = "system-uuid")
	@GenericGenerator(name = "system-uuid", strategy = "uuid")
	@Column(name = "userid", unique = true)
	private String userId;

	@Username
	@NotEmpty
	@Column(name = "username", unique = true)
	private String userName;

	@Size(min = 4, max = 100)
	@Column(name = "password")
	private String password;

	@ValidEmail
	@NotEmpty
	@Column(name = "email", unique = true)
	private String email;

	@Column(name = "enabled")
	private boolean enabled;

	@OneToMany(cascade = CascadeType.ALL, mappedBy = "user")
	private Set<UserRole> roles;

	@OneToMany(cascade = CascadeType.ALL, mappedBy = "user")
	private Set<Notice> notices;

	@OneToOne(cascade = CascadeType.ALL, mappedBy = "user")
	private Profile profile;

	public User() {

	}

	public User(User user) {
		this.userId = user.userId;
		this.userName = user.userName;
		this.email = user.email;
		this.password = user.password;
		this.enabled = user.enabled;
		this.profile = user.profile;
	}

	public Profile getProfile() {
		return profile;
	}

	public void setProfile(Profile profile) {
		this.profile = profile;
	}

	public Set<Notice> getNotices() {
		return notices;
	}

	public void setNotices(Set<Notice> notices) {
		this.notices = notices;
	}

	public Set<UserRole> getRoles() {
		return roles;
	}

	public void setRoles(Set<UserRole> roles) {
		this.roles = roles;
	}

	public boolean isEnabled() {
		return enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	@Override
	public String toString() {
		return "User [userId=" + userId + ", userName=" + userName + ", email=" + email + ", enabled=" + enabled
				+ ", roles=" + roles + ", profile=" + profile + "]";
	}





}
