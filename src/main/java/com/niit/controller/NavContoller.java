package com.niit.controller;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.bean.CustomerDetails;
import com.niit.bean.Product;
import com.niit.bean.User;
import com.niit.services.CustomerService;
@Controller
public class NavContoller {
	
	private CustomerService customerService;
	
	public  NavContoller(CustomerService customerService) {
		
		this.customerService = customerService;
	}


@Autowired
	public void setCustomerService(CustomerService customerService) {
		this.customerService = customerService;
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
			
			@RequestMapping(value="/Sign_up" )
			protected ModelAndView registered(@Valid @ModelAttribute("customerDetails") CustomerDetails customerDetails , BindingResult result,Model m) {
				ModelAndView modelandview1 = new ModelAndView("Sign_up");
				ModelAndView modelandview2 = new ModelAndView("Registered");
				if (result.hasErrors()) {
					return modelandview1;
				} else {
					
					customerService.save(customerDetails);
					return modelandview2;
				}

			}
			/*@RequestMapping("/Products")
			protected ModelAndView products(HttpServletRequest arg0, HttpServletResponse arg1) throws Exception {
				ModelAndView modelandview=new ModelAndView("Products");
				
				return modelandview;
				
			}*/
			
			

		}

