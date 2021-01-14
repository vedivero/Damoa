package com.damoa.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/member/*")
public class MemberController {

	@RequestMapping(value="/member/joinForm")
	public String joinForm(){
		return "/Member/joinForm";
	}
	
	@RequestMapping(value = "/member/join", method=RequestMethod.POST)
	public String joinMember() {
		return "redirect:/index";
	}
}
