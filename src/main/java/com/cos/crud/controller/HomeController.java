package com.cos.crud.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.cos.crud.model.Post;
import com.cos.crud.repository.PostRepository;

@Controller
public class HomeController {

	@Autowired
	PostRepository postRepo;
	
	@GetMapping(path= "/")
	public String index() {
		return "redirect:/1";
	}
	
	@GetMapping(path= "/{page}")
	public String index(Model model, @PathVariable int page) {
		int calPage = (page-1)*6;
		List<Post> posts = postRepo.postPaging(calPage);
		model.addAttribute("posts",posts);
		return "index";
	}
}
