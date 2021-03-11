package com.steve.springsp.stepController;

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
public class GugudanController {
	
	@RequestMapping(value = "/class1", method = RequestMethod.GET)
	public String GugudanClass1() {
		return "step/class1";
	}
	
	@RequestMapping(value = "/gugudan")
	@ResponseBody
	public Map<String,Object> GugudanCalcul(@RequestParam String dan, Model model) {
		System.out.println(dan);
		List<String> list = new ArrayList<String>();
		
		for(int i = 1; i < 10; i++) {
			String str = dan + " x " + i + " = " + Integer.parseInt(dan)*i;
			System.out.println(str);
			list.add(str);
		}
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("gugudanList", list);
		
		return map;
		
	}

}
