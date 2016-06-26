package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.UserDAO;


@Controller
public class UserController {

   @Autowired
	UserDAO userDAO;


	@RequestMapping("/isValidUser")
	public ModelAndView showMessage(@RequestParam(value = "usr") String name,
			@RequestParam(value = "pwd") String password) {
		System.out.println("in controller");

		String message;
		ModelAndView mv ;
		if (userDAO.isValidUser(name, password,true)) 
		{
			message = "Valid credentials";
			 mv = new ModelAndView("Admin_home");
		} else {
			message = "Invalid credentials";
			 mv = new ModelAndView("Sign_in");
		}

		//ModelAndView mv = new ModelAndView("success");
		mv.addObject("message", message);
		mv.addObject("name", name);
		// mv.addObject("password", password);
		return mv;
	}

}
