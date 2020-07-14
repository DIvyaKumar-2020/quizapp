package com.quiz.services;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quiz.model.Answers;
import com.quiz.model.Category;
import com.quiz.model.Question;
import com.quiz.repository.AnwersRepository;

@Service
public class AnswersService {

	@Autowired
	AnwersRepository answersRepository;

	public Optional<Answers> findById(int id) {
		System.out.println("222222222222222222");

		return answersRepository.findById(id);
	}

	public Answers save(Answers answer) {
		return answersRepository.save(answer);
	}

	public List<Answers> showAllItems() {
		System.out.println("44444444444444444444");
		List<Answers> ans = new ArrayList<Answers>();
		for (Answers an : answersRepository.findAll()) {
			ans.add(an);
		}
		return ans;

	}
}