
	package com.niit.controller;

	import javax.servlet.http.HttpServletRequest;
	import javax.servlet.http.HttpServletResponse;

	import org.springframework.beans.factory.annotation.Autowired;
	import org.springframework.stereotype.Controller;
	import org.springframework.web.bind.annotation.RequestMapping;
	import org.springframework.web.servlet.ModelAndView;

	import com.niit.services.CustDetailsService1;

	@Controller
	public class CustDetailsController1 {
		private CustDetailsService1 custDetailsService1;
		
		
		@Autowired
		public void setCustDetailsService(CustDetailsService1 custDetailsService1) {
			this.custDetailsService1 = custDetailsService1;
		}


		
		public CustDetailsController1(CustDetailsService1 custDetailsService1) {
		
		this.custDetailsService1 = custDetailsService1;
	}



		@RequestMapping("/Registered")
		protected ModelAndView registered(HttpServletRequest arg0, HttpServletResponse arg1) throws Exception {

			ModelAndView modelandview = new ModelAndView("Registered");

			return modelandview;
		}

	}


