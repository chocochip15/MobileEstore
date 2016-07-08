/*package com.niit.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.services.CustDetailsService;

@Controller
public class CustDetailsController {
	private CustDetailsService custDetailsService;
	
	
	@Autowired
	public void setCustDetailsService(CustDetailsService custDetailsService) {
		this.custDetailsService = custDetailsService;
	}


	
	public CustDetailsController(CustDetailsService custDetailsService) {
	
	this.custDetailsService = custDetailsService;
}



	@RequestMapping("/Registered")
	protected ModelAndView registered(HttpServletRequest arg0, HttpServletResponse arg1) throws Exception {

		ModelAndView modelandview = new ModelAndView("Registered");

		return modelandview;
	}

}
*/