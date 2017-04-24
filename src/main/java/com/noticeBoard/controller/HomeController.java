
package com.noticeBoard.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.noticeBoard.repository.UserRepository;
import com.noticeBoard.user.User;

@Controller

public class HomeController {

	private UserRepository userRepository;

	@Autowired
	public HomeController(UserRepository userRepository) {
		this.userRepository = userRepository;
	}

	@RequestMapping(value = "/", method = RequestMethod.GET)
	@ResponseBody
	public String showhome(Principal principal) {
		
		User user = userRepository.findByUserName(principal.getName());
		System.out.println(user);
		return user.toString();
	}
}
