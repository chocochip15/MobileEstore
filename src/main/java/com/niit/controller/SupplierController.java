/*package com.niit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.bean.Supplier;
import com.niit.dao.SupplierDAO;
import com.niit.services.SupplierService;



@Controller
public class SupplierController {
	 
	@Autowired
	private SupplierService supplierService;

	public void setSupplierService(SupplierService supplierService) {
		this.supplierService = supplierService;
	}

	@RequestMapping("/getAllSuppliers")
	public ModelAndView getAllSuppliers() {

		System.out.println("getAllSuppliers");
		
	//	List<Supplier> supplierService = supplierService.;
		List<Supplier> supplierlist=	supplierService.list();
		ModelAndView mv = new ModelAndView("/Supplier_list");
		mv.addObject("supplierService", supplierService);

		return mv;
	}

	public void setSupplierService(SupplierService supplierService) {
		this.supplierService = supplierService;
	}
}
*/