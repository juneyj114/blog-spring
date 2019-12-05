package com.cos.crud.repository;

import java.util.List;

import com.cos.crud.model.Post;

public interface PostRepository {

	List<Post> posts();
	List<Post> postPaging(int page);
	Post post(int id);
	void createPost(Post post);
	void updatePost(Post post);
	void deletePost(int id);
}
