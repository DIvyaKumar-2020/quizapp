package com.quiz.repository;

import java.util.Optional;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.quiz.model.Question;

@Repository
public interface QuestionRepository extends CrudRepository<Question, Integer> {

	 Optional<Question> findById(int id);
}
