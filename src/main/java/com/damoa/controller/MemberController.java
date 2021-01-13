package com.damoa.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class MemberController {

	@RequestMapping(value="/join")
	public String loginPage(){
		return "/Member/joinForm";
	}
	
}
