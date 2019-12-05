package com.cos.crud.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.cos.crud.model.User;
import com.cos.crud.repository.UserRepository;
import com.cos.crud.util.SHA256;

@Controller
public class UserController {

	@Autowired
	UserRepository userRepo;

	@GetMapping(path = "/user/loginForm")
	public String loginForm() {
		return "loginForm";
	}

	@PostMapping(path = "/user/login")
	public String login(User inputUser, HttpSession session) {
		User foundUser = userRepo.findByUsername(inputUser.getUsername());
		if (foundUser != null) {
			String rawPassword = inputUser.getPassword();
			String encPassword = SHA256.getEncrypt(rawPassword, "cos");
			if (encPassword.equals(foundUser.getPassword())) {
				System.out.println("??");
				session.setAttribute("user", foundUser);
				return "redirect:/";
			}
		}
		return "loginForm";
	}
	
	@GetMapping(path = "/user/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	

	@GetMapping(path = "/user/joinForm")
	public String joinForm() {
		return "joinForm";
	}

	@PostMapping(path = "/user/join")
	public String join(@RequestParam("avatar") MultipartFile avatar, @RequestParam("username") String username,
			@RequestParam("password") String password, HttpServletRequest request) {
		String realPath = request.getServletContext().getRealPath("/uploads/");
		if(! new File(realPath).exists())
        {
            new File(realPath).mkdir();
        }
		String dest = realPath + avatar.getOriginalFilename();
		try {
			avatar.transferTo(new File(dest));
		} catch (Exception e) {
			e.printStackTrace();
		}
		User user = new User();
		user.setAvatar(avatar.getOriginalFilename());
		user.setUsername(username);
		String encPassword = SHA256.getEncrypt(password, "cos");
		user.setPassword(encPassword);
		userRepo.createUser(user);
		return "redirect:/";
	}

}
