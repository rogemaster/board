package com.steve.springsp;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class GuguController {
	
	// Servlet 방식 --------------------------------------------------------------------
	@RequestMapping(value = "/gugudan", method = RequestMethod.GET)
	public String GuguIndex1() {
		
		return "gugudan/gugutest1";
	}
	
	@RequestMapping(value = "/gugucal", method = RequestMethod.GET)
	public String GuguTest1(@RequestParam String num, Model model) {
		
		System.out.println("num : " + num);
		
		List list = new ArrayList();
		
		for(int i = 0; i < 10; i++) {
			list.add(num + " x " + i + " = " + Integer.parseInt(num) * i + "<br>");
		}
		
		model.addAttribute("rst", list);
		
		return "guguresult";
	}
	
	// JSP 방식----------------------------------------------------------------------
	@RequestMapping(value = "/gugudan2", method = RequestMethod.GET)
	public String GuguIndex2() {
		
		return "gugutest2";
	}
	
	@RequestMapping(value = "/gugucal2", method = RequestMethod.GET)
	public String GuguTest2(@RequestParam String num, Model model) {
		
		model.addAttribute("rst2", num);
		
		return "guguresult2";
	}
	
	//-------------------------------------------------------------------------------
	
	@RequestMapping(value = "/gugudan3", method = RequestMethod.GET)
	public String GuguIndex3() {
		
		return "gugudan/gugutest3";
	}
	
	//-------------------------------------------------------------------------------
	@RequestMapping(value = "/gugucal3", method = RequestMethod.GET)
	@ResponseBody
	public String GuguTest3(@RequestParam String num, Model model) {
		
		System.out.println("num : " + num);
		
		List list = new ArrayList();
		
		for(int i = 0; i < 10; i++) {
			list.add(num + " x " + i + " = " + Integer.parseInt(num) * i + "<br>");
		}
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("json", list);
		
		return "guguresult";
	}

}
