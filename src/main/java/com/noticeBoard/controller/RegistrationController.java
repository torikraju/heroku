package com.noticeBoard.controller;

import java.util.HashSet;
import java.util.Set;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.noticeBoard.repository.UserRepository;
import com.noticeBoard.user.User;
import com.noticeBoard.user.UserRole;

@Controller
public class RegistrationController {

	private UserRepository userRepository;
	private BCryptPasswordEncoder bCryptPasswordEncoder;

	@Autowired
	public RegistrationController(UserRepository userRepository, BCryptPasswordEncoder bCryptPasswordEncoder) {
		this.userRepository = userRepository;
		this.bCryptPasswordEncoder = bCryptPasswordEncoder;
	}

	@RequestMapping(value = "/registration", method = RequestMethod.GET)
	public String showPage(Model model) {

		if (!model.containsAttribute("user")) {
			System.out.println(model.toString());
			model.addAttribute("user", new User());
		}

		return "registration";
	}

	@RequestMapping(value = "/registration", method = RequestMethod.POST)
	public String registrationAction(@Valid User user, BindingResult result, Model model,
			RedirectAttributes redirectAttributes) {

		if (result.hasErrors()) {
			redirectAttributes.addFlashAttribute("org.springframework.validation.BindingResult.user", result);
			redirectAttributes.addFlashAttribute("user", user);
			return "redirect:/registration";
		}

		if ((userRepository.findByUserName(user.getUserName())) != null) {
			result.rejectValue("userName", "duplicate.userName");
			redirectAttributes.addFlashAttribute("org.springframework.validation.BindingResult.user", result);
			redirectAttributes.addFlashAttribute("user", user);
			return "redirect:/registration";
		}
		if (userRepository.findByEmail(user.getEmail()) != null) {
			result.rejectValue("email", "duplicate.email");
			redirectAttributes.addFlashAttribute("org.springframework.validation.BindingResult.user", result);
			redirectAttributes.addFlashAttribute("user", user);
			return "redirect:/registration";
		}

		user.setEnabled(true);
		Set<UserRole> role = new HashSet<>();
		user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));

		UserRole roles = new UserRole("ROLE_USER");
		roles.setUser(user);
		role.add(roles);
		user.setRoles(role);

		userRepository.save(user);

		redirectAttributes.addFlashAttribute("message", "Sing up compleate. Please login");
		return "redirect:/registration";
	}

}
