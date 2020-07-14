package com.quiz.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.quiz.model.Answers;
import com.quiz.model.Category;
import com.quiz.model.Question;
import com.quiz.services.AnswersService;
import com.quiz.services.CategoryService;
import com.quiz.services.QuestionService;

@Controller
public class UserController {

	@Autowired
	CategoryService categoryService;

	@Autowired
	QuestionService questionService;

	@Autowired
	AnswersService answersService;

	@RequestMapping("/usercat")
	public String viewcategory(Model m) {
		System.out.println("88888888888888888888888");
		m.addAttribute("category", categoryService.showAllItems());
		System.out.println(categoryService.showAllItems());
		return "userhome";
	}

	@RequestMapping("/exam/{cid}/{cname}")
	public String createQuestion(@PathVariable("cid") int cid, Model m) {
		System.out.println("CID ::" + cid);
		Category cat = categoryService.findById(cid);
		System.out.println("CATEGORY ::" + cat.getName());
		List<Question> question1 = new ArrayList<Question>();
		for (Question qs : cat.getQuestion()) {
			System.out.println("questions:: " + qs.getContent());
			for (Answers as : qs.getAnswers()) {
				System.out.println("answers:: " + as.getContent());
			}
			question1.add(qs);
		}
		// Category cat= categoryService.findquestions(cid);
		// Question qs= questionService.findById(cid).orElse(null);
		m.addAttribute("questions", question1);

		// Answers answer= answersService.findById(qs.getQid()).orElse(null);
		// m.addAttribute("answers",answersService.findById(qs.getQid()).orElse(null));
		// System.out.println("answerss ::"+answersService.findById(cid).orElse(null));

		// return new ModelAndView("redirect:/exam");
		return "exam";
	}

	@RequestMapping("/examsubmit")
	public ModelAndView submitexam(HttpServletRequest request) {
		System.out.println("++++++++++++++++++++++++");
		int score = 0;
		String[] questionids = request.getParameterValues("questionid");
		if (questionids != null) {
			for (String questionid : questionids) {
				int correctanswer = questionService.findCorrectAnswer(Integer.parseInt(questionid));
				System.out.println("CORRECT ANSW:" + correctanswer);
				String radians=request.getParameter(questionid);
				System.out.println("RADIOANSW:" + request.getParameter(questionid));
				System.out.println("QSID:" + "question_" + questionid);
				if(radians==null) {
					System.out.println("nullllllllllllll");
					continue;
					}
				
				else{
					if(correctanswer == Integer.parseInt(radians)) {
					System.out.println("HEREEEEEEEEEEEEEEEEEE");
					score++;
				}}
				
			}
			ModelAndView modelAndView = new ModelAndView("result");
			modelAndView.addObject("result", score);
			return modelAndView;

		} else {
			return new ModelAndView("redirect:/error");

		}

	}
}
