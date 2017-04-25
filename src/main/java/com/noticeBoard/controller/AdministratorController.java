package com.noticeBoard.controller;

import java.util.List;

import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.noticeBoard.model.Notice;
import com.noticeBoard.repository.NoticeRepository;
import com.noticeBoard.repository.UserRepository;
import com.noticeBoard.repository.UserRolesRepository;
import com.noticeBoard.user.User;
import com.noticeBoard.user.UserRole;

@Controller
public class AdministratorController {

	private UserRolesRepository userRolesRepository;
	private UserRepository userRepository;
	private NoticeRepository noticeRepository;

	public AdministratorController(UserRolesRepository userRolesRepository, UserRepository userRepository,
			NoticeRepository noticeRepository) {
		this.userRolesRepository = userRolesRepository;
		this.userRepository = userRepository;
		this.noticeRepository = noticeRepository;
	}

	// showing user manage page
	@RequestMapping(value = "/userManage", method = RequestMethod.GET)
	public String showUserManagePage(Model model) {
		List<UserRole> users = userRolesRepository.findAllByRole("ROLE_USER");
		model.addAttribute("users", users);
		return "userManage";
	}

	// showing admin manage page
	@RequestMapping(value = "/adminManage", method = RequestMethod.GET)
	public String showAdminManagePage(Model model) {
		List<UserRole> users = userRolesRepository.findAllByRole("ROLE_ADMIN");
		model.addAttribute("users", users);
		return "adminManage";
	}

	// for allow or block user
	@RequestMapping(value = "/AdminAction/enabled/{username}")
	public String changeEnabled(@PathVariable String username) {
		User user = userRepository.findByUserName(username);
		boolean enabled = user.isEnabled();
		user.setEnabled(!enabled);
		userRepository.save(user);
		return "redirect:/userManage";
	}

	// for allow or block admin
	@Secured("ROLE_SYSTEMADMIN")
	@RequestMapping(value = "/SystemAdminAction/enabled/{username}")
	public String changeEnabledAdmin(@PathVariable String username) {
		User user = userRepository.findByUserName(username);
		boolean enabled = user.isEnabled();
		user.setEnabled(!enabled);
		userRepository.save(user);
		return "redirect:/adminManage";
	}

	// demoting admin
	@Secured("ROLE_SYSTEMADMIN")
	@RequestMapping(value = "/SystemAdminAction/demote/{username}")
	public String demoteAdmin(@PathVariable String username) {
		User user = userRepository.findByUserName(username);
		UserRole role = userRolesRepository.findByUser(user);
		role.setRole("ROLE_USER");
		userRolesRepository.save(role);
		return "redirect:/adminManage";
	}

	// showing create admin page
	@RequestMapping(value = "/createAdmin", method = RequestMethod.GET)
	public String showCreateAdminPage(Model model) {
		List<UserRole> users = userRolesRepository.findAllByRole("ROLE_USER");
		model.addAttribute("users", users);
		return "createAdmin";
	}

	// prmoto an user to admin
	@RequestMapping(value = "/SystemAdminAction/promot/{username}")
	public String promotAdmin(@PathVariable String username) {
		User user = userRepository.findByUserName(username);
		UserRole role = userRolesRepository.findByUser(user);
		role.setRole("ROLE_ADMIN");
		userRolesRepository.save(role);
		return "redirect:/createAdmin";
	}

	// showing notice manage page
	@RequestMapping(value = "/noticeManage", method = RequestMethod.GET)
	public String showNoticeManagePage(Model model) {
		List<Notice> notices = (List<Notice>) noticeRepository.findAll();
		model.addAttribute("notices", notices);
		return "noticeManage";
	}

	// for deleting notice
	@Secured("ROLE_ADMIN")
	@RequestMapping(value = "/AdminAction/deleteNotice/{id}")
	public String deleteNotice(@PathVariable String id) {
		noticeRepository.delete(id);
		return "redirect:/noticeManage";
	}

}
