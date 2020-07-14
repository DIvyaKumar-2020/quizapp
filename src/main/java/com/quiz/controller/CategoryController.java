package com.quiz.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.quiz.services.CategoryService;


@Controller
public class CategoryController {
	
	@Autowired
	CategoryService categoryService;
	
	@RequestMapping("/category")
	public String viewItem(Model m) {
		System.out.println("88888888888888888888888");
		m.addAttribute("category",categoryService.showAllItems());
		System.out.println(categoryService.showAllItems());
		return "category";
	}
	

}
