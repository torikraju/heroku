package com.noticeBoard.repository;

import org.springframework.data.repository.CrudRepository;

import com.noticeBoard.model.Profile;

public interface ProfileRepository extends CrudRepository<Profile, String> {

}
