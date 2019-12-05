package com.cos.crud.repository;

import com.cos.crud.model.User;

public interface UserRepository {

	void createUser(User user);
	User findByUsername(String username);
	User findById(int id);
}
