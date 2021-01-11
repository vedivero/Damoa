package com.damoa.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/")
public class MemberController {

	@RequestMapping(value="/loginForm", method=RequestMethod.GET)
	public String loginPage(){
		
		return "loginForm";
	}
	
}
