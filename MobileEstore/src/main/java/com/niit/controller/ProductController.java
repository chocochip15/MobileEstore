package com.niit.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.niit.bean.Products;
@Controller
public class ProductController {
	@RequestMapping("/Products")
	protected ModelAndView products(HttpServletRequest arg0, HttpServletResponse arg1) throws Exception {
		ModelAndView modelandview = new ModelAndView("Products");
		// Creating multiple product instances
		System.out.println("hi");
		Products p1 = new Products();
		p1.setProductId("101");
		p1.setProductName("Galaxy S-5");
		Products p2 = new Products();
		p2.setProductId("102");
		p2.setProductName("Galaxy S-6");
		Products p3 = new Products();
		p3.setProductId("103");
		p3.setProductName("Galaxy S-7");
		// creating array list to store the information of the objects
		List<Products> products = new ArrayList<Products>();
		products.add(p1);
		products.add(p2);
		products.add(p3);

		Gson gson = new Gson();

		String str = gson.toJson(products);
		System.out.println(str);
		return modelandview;

	}

}
