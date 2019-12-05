package com.cos.crud.controller;



import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.cos.crud.model.Post;
import com.cos.crud.model.User;
import com.cos.crud.repository.PostRepository;
import com.cos.crud.repository.UserRepository;

@Controller
public class PostController {

	@Autowired
	PostRepository postRepo;
	
	@Autowired
	UserRepository userRepo;
	
	@GetMapping(path= "/post/postForm")
	public String postForm(HttpSession session) {
		if(session.getAttribute("user") == null) {
			return "redirect:/";
		}
		return "createPost";
	}
	
	@PostMapping(path="/post/createPost")
	public String createPost(Post post, HttpSession session) {
		User user = (User)session.getAttribute("user");
		post.setUserId(user.getId());
		postRepo.createPost(post);
		System.out.println("DB저장");
		return "redirect:/";
	}
	
	@GetMapping(path="/post/detail/{id}")
	public String detail(@PathVariable int id, Model model) {
		Post post = postRepo.post(id);
		int userId = post.getUserId();
		User user = userRepo.findById(userId);
		model.addAttribute("post", post);
		model.addAttribute("user", user);
		return "detail";
	}
	
	@GetMapping(path="/post/delete/{id}")
	public String delete(@PathVariable int id) {
		postRepo.deletePost(id);
		return "redirect:/";
	}
	
	@GetMapping(path="/post/update/{id}")
	public String updateForm(@PathVariable int id, Model model) {
		Post post = postRepo.post(id);
		model.addAttribute("post", post);
		return "updatePost";
	}
	
	@PostMapping(path="/post/update")
	public String update(Post post) {
		postRepo.updatePost(post);
		return "redirect:/post/detail/"+post.getId();
	}
}
