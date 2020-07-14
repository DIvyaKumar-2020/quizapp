package com.quiz.repository;

import java.util.Optional;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.quiz.model.Category;
@Repository
public interface CategoryRepository extends CrudRepository<Category, Integer>{

	 Optional<Category> findById(int id);
}
