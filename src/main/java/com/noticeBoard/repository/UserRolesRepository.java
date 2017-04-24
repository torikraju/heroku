package com.noticeBoard.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.noticeBoard.user.User;
import com.noticeBoard.user.UserRole;


public interface UserRolesRepository extends CrudRepository<UserRole, String> {

	@Query("SELECT a.role from UserRole a, User b WHERE b.userName=:username and a.user=b.userId")
	public List<String> findRoleByUserName(@Param("username") String username);

	public List<UserRole> findAllByRole(String role);
	
	public UserRole findByUser(User user);

}
