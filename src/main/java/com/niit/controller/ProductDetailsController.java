
package com.niit.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.bean.CustomerDetails;
import com.niit.bean.ProductDetails;
import com.niit.services.CustDetailsService;
import com.niit.services.CustomerService;
import com.niit.services.ProductDetailsService;

@Controller
public class ProductDetailsController {
	private ProductDetailsService productDetailsService;

	
@Autowired
	public ProductDetailsController(ProductDetailsService productDetailsService) {
		super();
		this.productDetailsService = productDetailsService;
	}


@Autowired
	public void setProductDetailsService(ProductDetailsService productDetailsService) {
		this.productDetailsService = productDetailsService;
	}



	@RequestMapping(value="/products/moreProducts/{id}" , method= RequestMethod.POST)
	protected String moreDetails(@PathVariable("id") String id , BindingResult result,Model m)
	{
		ProductDetails p1=productDetailsService.getById(id);
		m.addAttribute("productName", p1.getName());
		m.addAttribute("productPrice", p1.getPrice());
		m.addAttribute("productTouchScreen", p1.getTouchScreen());
		m.addAttribute("productDimensions", p1.getDimensions());
		m.addAttribute("productWeight", p1.getWeight());
		m.addAttribute("productBatteryCapacity", p1.getBatteryCapacity());
		m.addAttribute("productRemovableBattery", p1.getRemovableBattery());
		m.addAttribute("productColours", p1.getColours());
		m.addAttribute("productScreenSize", p1.getScreenSize());
		m.addAttribute("productResolution", p1.getResolution());
		m.addAttribute("productProcessor", p1.getProcessor());
		m.addAttribute("productRam", p1.getRam());
		m.addAttribute("productInternalStorage", p1.getInternalStorage());
		m.addAttribute("productExpandableStorage", p1.getExpandableStorage());
		m.addAttribute("productOperatingSystem", p1.getOperatingSystem());
		m.addAttribute("productFrontCamera", p1.getFrontCamera());
		m.addAttribute("productRearCamera", p1.getRearCamera());
		m.addAttribute("productFlash", p1.getFlash());
		
		

		return "ProductDetails";
	}

}
