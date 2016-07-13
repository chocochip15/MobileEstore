package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.bean.User;
import com.niit.services.UserService;


@Controller
public class UserController {

  @Autowired
private	UserService userService;


	public void setUserService(UserService userService) {
	this.userService = userService;
}
@RequestMapping("/isValidUser" )
	public ModelAndView validate(@ModelAttribute("user") User user,BindingResult result) {
		System.out.println("in controller");

		String message;
		ModelAndView mv ;
		if (userService.isValidUser(user.getUserId(), user.getUserPassword(),true)) 
		{
			message = "Valid credentials";
			 mv = new ModelAndView("Admin_home");
		} else {
			message = "Invalid credentials";
			 mv = new ModelAndView("Sign_in");
		}

		
		mv.addObject("message", message);
		mv.addObject("userId",user.getUserId());
		// mv.addObject("password", password);
		return mv;
	}

}
