package com.steve.springsp.login;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {
	
	// 로그인 페이지 접속 하면서 세션 정보 등록
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginIndex(HttpServletRequest request) {
		
		request.getSession().setAttribute("id", "stevelee");
		request.getSession().setAttribute("pw", "1234");
		
		return "login";
	}
	
	// 로그인 정보 체크
	@RequestMapping(value = "/login_chk", method = RequestMethod.POST)
	public String loginChk(@RequestParam Map<String, Object> param, Model model, HttpServletRequest request) {
		
		String login_id = (String)param.get("id");
		String sesstion_id = (String)request.getSession().getAttribute("id");
		
		System.out.println("ID :: " + login_id);
		System.out.println("PW :: " + param.get("pw"));
		System.out.println("sesstion ID :: " + sesstion_id);
		System.out.println("sesstion PW :: " + request.getSession().getAttribute("pw"));
		
		if(login_id.equals(sesstion_id)) {
			if(param.get("pw").equals(request.getSession().getAttribute("pw"))) {
				request.getSession().setAttribute("result", "ok");
			}
		}else {
			request.getSession().setAttribute("result", "fall");
		}
		
		return "loginchk";
	}

}
