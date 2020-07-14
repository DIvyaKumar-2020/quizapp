package com.quiz.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quiz.model.User;
import com.quiz.repository.UserRepository;

@Service
public class UserService {

	@Autowired
	UserRepository userRepository;

	public User save(User user) {
		return userRepository.save(user);
	}

	public List<User> findByUsernameAndPassword(String username, String password) {

		return userRepository.findByUsernameAndPassword(username, password);
	}

}
