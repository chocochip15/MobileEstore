package com.niit.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.niit.bean.Product;
@Controller
public class ProductController {
	@RequestMapping("/Products")
	protected ModelAndView products(HttpServletRequest arg0, HttpServletResponse arg1  ) throws Exception {
		ModelAndView modelandview = new ModelAndView("Products");
		// Creating multiple product instances
		Product p1 = new Product();
		p1.setProductId("101");
		p1.setProductName("Galaxy S-5");
		Product p2 = new Product();
		p2.setProductId("102");
		p2.setProductName("Galaxy S-6");
		Product p3 = new Product();
		p3.setProductId("103");
		p3.setProductName("Galaxy S-7");
		// creating array list to store the information of the objects
		List<Product> products = new ArrayList<Product>();
		products.add(p1);
		products.add(p2);
		products.add(p3);

		Gson gson = new Gson();

		String str = gson.toJson(products);
		modelandview.addObject("str",str);
		return modelandview;

	}

}
