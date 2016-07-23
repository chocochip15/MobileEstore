package com.niit.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Gallery {
	@RequestMapping("/Gallery")
	protected ModelAndView gallery(HttpServletRequest arg0, HttpServletResponse arg1) throws Exception {
	
		ModelAndView modelandview=new ModelAndView("Gallery");
		
		
		return modelandview;
		
	}
	
	@RequestMapping("/Honor_5X")
	protected ModelAndView honor5X(HttpServletRequest arg0, HttpServletResponse arg1) throws Exception {
	
		ModelAndView modelandview=new ModelAndView("Honor_5x");
		
		
		return modelandview;
		
	}
	@RequestMapping("/I_phone_SE")
	protected ModelAndView iPhoneSE(HttpServletRequest arg0, HttpServletResponse arg1) throws Exception {
	
		ModelAndView modelandview=new ModelAndView("I_phone_SE");
		
		
		return modelandview;
		
	}
	@RequestMapping("/Karbonn_Quattro_L50")
	protected ModelAndView karbonnQuattroL50(HttpServletRequest arg0, HttpServletResponse arg1) throws Exception {
	
		ModelAndView modelandview=new ModelAndView("Karbonn_Quattro_L50");
		
		
		return modelandview;
		
	}
	@RequestMapping("/Micromax_Canvas_Spark_3")
	protected ModelAndView micromaxCanvasSpark3(HttpServletRequest arg0, HttpServletResponse arg1) throws Exception {
	
		ModelAndView modelandview=new ModelAndView("Micromax_Canvas_Spark_3");
		
		
		return modelandview;
		
	}
	@RequestMapping("/Sony_Xperia_X_Dual")
	protected ModelAndView sonyXperiaXDual(HttpServletRequest arg0, HttpServletResponse arg1) throws Exception {
	
		ModelAndView modelandview=new ModelAndView("Sony_Xperia_X_Dual");
		
		
		return modelandview;
		
	}
	@RequestMapping("/Xiaomi_Mi_Max")
	protected ModelAndView xiaomiMiMax(HttpServletRequest arg0, HttpServletResponse arg1) throws Exception {
	
		ModelAndView modelandview=new ModelAndView("Xiaomi_Mi_Max");
		
		
		return modelandview;
		
	}
}
