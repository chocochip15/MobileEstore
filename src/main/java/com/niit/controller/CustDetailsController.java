
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



	@RequestMapping(value="/Registered" )
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

}
