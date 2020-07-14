package com.quiz.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.quiz.model.Category;
import com.quiz.model.Question;
import com.quiz.services.CategoryService;
import com.quiz.services.QuestionService;

@Controller
public class QuestionController {
	@Autowired
	QuestionService questionService;
	
	@Autowired
	CategoryService categoryService;
	
	@RequestMapping("/questions")
	public String viewItem(Model m) {
		
		m.addAttribute("questions",questionService.showAllItems());
		System.out.println(categoryService.showAllItems());
		System.out.println("AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA");
		return "questions";
	}
	
	@RequestMapping("/question/{cid}/{cname}")
	public String viewItem(Model m,@PathVariable("cid") int cid,@PathVariable("cname") String cname) {
		m.addAttribute("cid",cid);
		m.addAttribute("cname",cname);
		System.out.println("999999999999999999999");
		return "add_question";
	}


	
	@PostMapping("/addquestion/{cid}")
	public String createQuestion(@PathVariable("cid") int cid,Question question) {
	
		Category category= categoryService.findById(cid);
		System.out.println("category  : "+category);
		question.setCategory(category);
            
		 questionService.save(question);
		 return "redirect:/category";
	}
}
