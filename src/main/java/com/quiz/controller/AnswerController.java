package com.quiz.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.quiz.model.Answers;
import com.quiz.model.Question;
import com.quiz.services.AnswersService;
import com.quiz.services.QuestionService;


@Controller
public class AnswerController {

	@Autowired
	AnswersService answersService;
	
	@Autowired
	QuestionService questionService;
	
	@RequestMapping("/answer/{qid}/{content}")
	public String createAnswer1(@PathVariable("qid") int qid,@PathVariable("content") String content,Model m) {
		System.out.println("77887777777777777778");
		m.addAttribute("question",content);
		m.addAttribute("qid",qid);
		//System.out.println(cateService.showAllItems());
		return "create_answer";
	}
	
	@PostMapping("/addoptions/{qid}")
	public String createAnswer(@PathVariable("qid") int qid,Answers answer, @RequestParam("option") boolean option) {
		System.out.println("IN CREATE ANSWER");
		Question qs= questionService.findById(qid).orElse(null);
		System.out.println("radio :"+answer.isCorrect());
		System.out.println("ption"+option);
		//if()
		answer.setQuestion(qs);
		answer.setCorrect(option) ;
		 answersService.save(answer);
		 return "redirect:/questions";
	}
}
