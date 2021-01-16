package com.damoa.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.damoa.domain.MemberVO;
import com.damoa.service.MemberService;

@Controller
@RequestMapping(value = "/member/*")
public class MemberController {

	@Inject
	private MemberService service;
	
	private static final Logger l = LoggerFactory.getLogger(MemberController.class);
	
	@RequestMapping(value="/joinForm")
	public String joinForm() throws Exception{
		return "/member/joinForm";
	}
	
	@RequestMapping(value = "/joinMember", method=RequestMethod.POST)
	public String joinMember(MemberVO vo) throws Exception {
		service.joinMember(vo);
		return "redirect:/index";
	}
}
