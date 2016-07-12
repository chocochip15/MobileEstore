
package com.niit.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.bean.CustomerDetails;
import com.niit.services.CustDetailsService;
import com.niit.services.CustomerService;

@Controller
public class CustDetailsController {
	private CustomerService customerService;

	
@Autowired
	public CustDetailsController(CustomerService customerService) {
		super();
		this.customerService = customerService;
	}


@Autowired
	public void setCustomerService(CustomerService customerService) {
		this.customerService = customerService;
	}



	@RequestMapping(value="/Registered" , method= RequestMethod.POST)
	protected ModelAndView registered(@ModelAttribute("customerDetails") CustomerDetails customerDetails , BindingResult result,Model m) {

		System.out.println("hi");
		customerService.save(customerDetails);
		
		ModelAndView modelandview = new ModelAndView("Registered");

		return modelandview;
	}

}
