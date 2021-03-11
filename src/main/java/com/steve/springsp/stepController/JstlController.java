package com.steve.springsp.stepController;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class JstlController {
	
	@RequestMapping("/step2")
	public String jstlController(Model model) {
		
		List<String> list = new ArrayList<String>();
		
		list.add("student1 : male");
		list.add("student2 : male");
		list.add("student3 : male");
		
		model.addAttribute("studentList", list);
		
		return "step/step2";
	}

}
