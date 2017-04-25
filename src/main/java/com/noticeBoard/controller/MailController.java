package com.noticeBoard.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.noticeBoard.model.ContactUs;
import com.noticeBoard.repository.ContactUsRepository;

@Controller
public class MailController {

	private ContactUsRepository contactUsRepository;

	@Autowired
	public MailController(ContactUsRepository contactUsRepository) {
		this.contactUsRepository = contactUsRepository;
	}

	@RequestMapping(value = "/mail", method = RequestMethod.GET)
	public String showinboxpage(Model model) {
		List<ContactUs> mails = contactUsRepository.findByOrderByReadAsc();
		model.addAttribute("mails", mails);
		return "mail";
	}

	@RequestMapping(value = "/individualMail/{id}", method = RequestMethod.GET)
	public String individualMail(Model model, @PathVariable String id) {

		ContactUs mail = contactUsRepository.findOne(id);
		model.addAttribute("mail", mail);
		mail.setRead(true);
		contactUsRepository.save(mail);
		
		return "individualMail";
	}

}
