package com.damoa.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
	
	private static final Logger l = LoggerFactory.getLogger(HomeController.class);
	
	
	@RequestMapping("/main")
	public String main()throws Exception {
		l.info("HomeController : call main page");
		return "main";
	}
	
	//마이페이지
	@RequestMapping(value = "/mypage", method = RequestMethod.GET)
	public String serviceMain()throws Exception{
		l.info("HomeController : call mypage");
		return "mypage";
	}
	
	@RequestMapping(value = "/updateMember",method = RequestMethod.GET)
	public String updateMember(HttpSession session)throws Exception{
		
		l.info("HomeController : call updateMember");
		return "/updateMember";
	}
	

}
