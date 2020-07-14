package com.quiz.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.quiz.model.User;

import com.quiz.services.UserService;

@Controller
public class Applicationcontroller {
	@Autowired
	UserService userService;

	@RequestMapping("/")
	public String home() {

		return "welcome";
	}

	@RequestMapping("/newuser")
	public String newuser() {

		return "new_user";
	}

	@RequestMapping("/adminhome")
	public String adminhome() {

		return "admin_home";
	}

	@RequestMapping("/userreg")
	public String newUser(User user, Model m) {
		// System.out.println("88888888888888888888888");
		userService.save(user);
		return "welcome";
	}

	@RequestMapping("/userlogin")
	public ModelAndView loginUser(User user, HttpServletRequest request, HttpSession session,Model m) {
		List <User> list=userService.findByUsernameAndPassword(user.getUsername().toLowerCase(), user.getPassword().toLowerCase());
		System.out.println("HERE: "+userService.findByUsernameAndPassword(user.getUsername(),user.getPassword()));
		System.out.println("111111111111111111111111");
		System.out.println("USERNAME: "+user.getUsername());
		System.out.println("PASS: "+user.getPassword());
		if (user.getUsername().toLowerCase().equals("admin") && user.getPassword().toLowerCase().equals("admin")) {

			session.setAttribute("username", user.getUsername());
			return new ModelAndView("redirect:/adminhome");

			
		}
		
		else if(!list.isEmpty()) {
			System.out.println("HEREEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE");
			session.setAttribute("username", user.getUsername());
			return new ModelAndView("redirect:/usercat");
			
		}
		
		else {	
		
		System.out.println("EMPTY LIST");
		String message = "Enter valuable credentials";
		m.addAttribute("message", message);
		System.out.println("MESAGE: "+message);
		return new ModelAndView("redirect:/");

		} 
			//request.setAttribute("message", "enter valubale credentials");
			//return new ModelAndView("redirect:/");

		
		// return new ModelAndView("redirect:/");

	}
	@RequestMapping("/logout")
	public ModelAndView logout(HttpSession session) { 
		session.invalidate();
		return new ModelAndView("redirect:/");
}
	
}
