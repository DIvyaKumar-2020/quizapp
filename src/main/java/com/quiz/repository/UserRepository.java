package com.quiz.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.quiz.model.User;
public interface UserRepository extends CrudRepository<User, Integer> {
	public List<User> findByUsernameAndPassword(String username, String password);
}
