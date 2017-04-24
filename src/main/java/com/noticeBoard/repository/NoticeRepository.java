package com.noticeBoard.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.noticeBoard.model.Notice;
import com.noticeBoard.user.User;

public interface NoticeRepository extends CrudRepository<Notice, String> {

	public List<Notice> findByUser(User user);
	
	public Notice findById(String id);
	
	public List<Notice> findFirst5ByOrderByIdDesc();

}
