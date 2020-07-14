package com.quiz.services;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quiz.model.Answers;
import com.quiz.model.Category;
import com.quiz.model.Question;
import com.quiz.repository.QuestionRepository;

@Service
public class QuestionService {

	@Autowired
	QuestionRepository questionRepository;
	
	public List<Question> showAllItems(){
		
		List<Question> question= new ArrayList<Question>();
		for(Question qs : questionRepository.findAll()) {
			question.add(qs);
		}
		
		return question;
	}

	public Question save(Question question) {
		return questionRepository.save(question);
	}

	public Optional<Question> findById(int id) {

		return questionRepository.findById(id);
	}

	public int findCorrectAnswer(int questionid) {
		Question question=questionRepository.findById(questionid).get();
		for(Answers ans:question.getAnswers()) {
			if(ans.isCorrect()) {
				return ans.getAid();
			}
		}
		return -1;
	}

}
