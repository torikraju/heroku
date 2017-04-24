package com.noticeBoard.controller;

import java.security.Principal;
import java.time.LocalDate;
import java.util.List;
import java.util.Optional;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.noticeBoard.model.Notice;
import com.noticeBoard.repository.NoticeRepository;
import com.noticeBoard.repository.UserRepository;
import com.noticeBoard.user.User;

@Controller
public class NoticeController {

	private NoticeRepository noticeRepository;
	private UserRepository userRepository;

	public NoticeController(NoticeRepository noticeRepository, UserRepository userRepository) {
		this.noticeRepository = noticeRepository;
		this.userRepository = userRepository;

	}

	@RequestMapping(value = { "/postNotice", "updateNotice/{id}" }, method = RequestMethod.GET)
	public String showPostNotecePage(Model model, Principal principal, @PathVariable Optional<String> id) {

		User user = userRepository.findByUserName(principal.getName());
		model.addAttribute("user", user);
		Notice notice = null;
		if (!model.containsAttribute("notice")) {
			if (id.isPresent()) {
				notice = noticeRepository.findOne(id.get());
				model.addAttribute("edit", true);
			}

			if (notice == null) {
				notice = new Notice();

			}
			model.addAttribute("notice", notice);
		}

		return "postNotice";
	}

	// saving or updating notice
	@RequestMapping(value = "/postNotice", method = RequestMethod.POST)
	public String postNoteceAction(@Valid Notice notice, BindingResult result, Principal principal,
			RedirectAttributes redirectAttributes, Model model) {

		User user = userRepository.findByUserName(principal.getName());
		model.addAttribute("user", user);

		if (result.hasErrors()) {
			redirectAttributes.addFlashAttribute("org.springframework.validation.BindingResult.notice", result);
			redirectAttributes.addFlashAttribute("notice", notice);
			return "redirect:/postNotice";
		}
		// fixing for bug for update Notice
		if (noticeRepository.exists(notice.getId())) {
			Notice originalNotice = noticeRepository.findOne(notice.getId());
			if (originalNotice.getUser().getUserName() != principal.getName()) {
				return "redirect:/";
			}

		}

		if (notice.getDate() == null) {
			notice.setDate(LocalDate.now());
		}

		notice.setUser(user);

		noticeRepository.save(notice);

		redirectAttributes.addFlashAttribute("status", true);
		return "redirect:/postNotice";
	}

	// showing individual notice
	@RequestMapping(value = "/yourNotice", method = RequestMethod.GET)
	public String showMyNotice(Model model, Principal principal) {

		User user = userRepository.findByUserName(principal.getName());

		List<Notice> notices = noticeRepository.findByUser(user);

		model.addAttribute("notices", notices);

		return "yourNotice";
	}

	// showing individual notice
	@RequestMapping(value = "/individualNotice/{id}", method = RequestMethod.GET)
	public String showIndividualNoticePage(@PathVariable String id, Model model) {

		Notice notice = noticeRepository.findOne(id);
		model.addAttribute("notice", notice);
		return "individualNotice";
	}

	// showing all notice
	@RequestMapping(value = "/allNotice", method = RequestMethod.GET)
	public String showAllNoticePage(Model model) {
		model.addAttribute("notices", noticeRepository.findAll());
		return "allNotice";
	}

	// for deleting personal notice
	@RequestMapping(value = "/deleteNotice/{id}", method = RequestMethod.GET)
	public String deleteNotice(@PathVariable String id, Model model, Principal principal) {

		Notice notice = noticeRepository.findOne(id);
		User user = userRepository.findByUserName(principal.getName());

		if (notice.getUser().getUserName() == user.getUserName()) {
			noticeRepository.delete(notice);
		}

		return "redirect:/yourNotice";
	}

}
