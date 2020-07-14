package com.quiz.services;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quiz.model.Category;
import com.quiz.model.Question;
import com.quiz.repository.CategoryRepository;


@Service
public class CategoryService {
	
	@Autowired
	CategoryRepository categoryRepository;

	public List<Category> showAllItems(){
		System.out.println("44444444444444444444");
		List<Category> category= new ArrayList<Category>();
		for(Category cat : categoryRepository.findAll()) {
			category.add(cat);
		}
		
		return category;
	}
	 public Category findById(int id) {
		 System.out.println("222222222222222222");

	        return categoryRepository.findById(id).get();
	    }
	/*public List<Question> findquestions(int cid) {
		Category cat=categoryRepository.findById(cid).get();
		List<Question> question1= new ArrayList<Question>();
		for(Question qs:cat.getQuestion()) {
			question1.add(qs);
		}
		return question1;
	}*/


}
