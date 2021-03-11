package com.steve.springsp.stepController;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class SessionController {

	static List<String> list = new ArrayList<String>();
	static int cnt = 1;

	
	@RequestMapping("/step3")
	public String sessionController() {
		return "step/step3";
	}
	
	@RequestMapping("/step3SessionCall")
	@ResponseBody
	public Map<String, Object> sessionCall(HttpServletRequest request) {
		String str = "";
		Date date = new Date();
		String sessionId = request.getRequestedSessionId();
		
		int num = cnt++;
		str = "num:" + num + " / " + "id:" + sessionId + " date:" + date;
		list.add(str);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("sessionList", list);
		map.put("cnt", num);
		
		return map;
		
	}
}
