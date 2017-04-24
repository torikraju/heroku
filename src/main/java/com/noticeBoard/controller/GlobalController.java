package com.noticeBoard.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartException;
import org.springframework.web.servlet.mvc.method.annotation.ResponseEntityExceptionHandler;

import com.noticeBoard.repository.ContactUsRepository;

@ControllerAdvice
public class GlobalController extends ResponseEntityExceptionHandler {

	private ContactUsRepository contactUsRepository;

	@Autowired
	public GlobalController(ContactUsRepository contactUsRepository) {
		this.contactUsRepository = contactUsRepository;
	}

	@ExceptionHandler(MultipartException.class)
	@ResponseBody
	String handleFileException(HttpServletRequest request, Throwable ex) {
		return "File upload error.File is too big to handle...";
	}

	@ModelAttribute("newMailCount")
	public long getNewMailCount() {
		return contactUsRepository.newMailcount();
	}

}
