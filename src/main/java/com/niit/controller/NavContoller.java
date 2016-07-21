package com.niit.controller;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.bean.CustomerDetails;
import com.niit.bean.Product;
import com.niit.bean.User;
@Controller
public class NavContoller {
	
	

	@RequestMapping("/Honor5x")
	protected ModelAndView honor5x(HttpServletRequest arg0, HttpServletResponse arg1) throws Exception {
	
		ModelAndView modelandview=new ModelAndView("Honor_5x");
		
		
		return modelandview;
		
	}
		
		
			@RequestMapping("/")
			protected ModelAndView landingPage(HttpServletRequest arg0, HttpServletResponse arg1) throws Exception {
			
				ModelAndView modelandview=new ModelAndView("Landing_Page");
				
				
				return modelandview;
				
			}

			
			@RequestMapping("/About_us")
			protected ModelAndView aboutUs(HttpServletRequest arg0, HttpServletResponse arg1) throws Exception {
				ModelAndView modelandview=new ModelAndView("About_us");
				
				return modelandview;
				
			}
			@RequestMapping("/Admin_login")
			protected ModelAndView adminLogin(HttpServletRequest arg0, HttpServletResponse arg1,Model m) throws Exception {
				System.out.println("admin page");
				ModelAndView modelandview=new ModelAndView("Admin_login");
			m.addAttribute("user",new User());	
				return modelandview;
				
			}
			@RequestMapping("/Sign_up")
			protected String signUp(HttpServletRequest arg0, HttpServletResponse arg1,Model m ) throws Exception {
				
				return "redirect:/Sign_upflow";
			
			}
			/*@RequestMapping("/Products")
			protected ModelAndView products(HttpServletRequest arg0, HttpServletResponse arg1) throws Exception {
				ModelAndView modelandview=new ModelAndView("Products");
				
				return modelandview;
				
			}*/
			
			@RequestMapping("/Gallery")
			protected ModelAndView gallery(HttpServletRequest arg0, HttpServletResponse arg1) throws Exception {
				ModelAndView modelandview=new ModelAndView("Honor_5x");
				
				return modelandview;
				
			}

		}

