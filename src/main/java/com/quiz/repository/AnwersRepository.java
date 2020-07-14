package com.quiz.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.quiz.model.Answers;
@Repository
public interface AnwersRepository extends CrudRepository<Answers, Integer> {

}
