package com.damoa.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/")
public class MemberController {

	@RequestMapping(value="/join")
	public String loginPage(){
		
		return "/Member/joinForm";
	}
	
}
