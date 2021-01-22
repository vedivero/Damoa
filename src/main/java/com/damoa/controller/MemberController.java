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
	
	//회원가입 입력 폼
	@RequestMapping(value = "/joinForm" ,method = RequestMethod.GET)
	public String joinForm() {
		l.info("Controller : joinForm호출");
		return "member/joinForm";
	}

	//로그인
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		
		l.info("Controller:login()호출");
		return "member/login";
	}
	
	//회원가입
	@RequestMapping(value = "/join" ,method = RequestMethod.POST)
	public void join(MemberVO vo) {
		l.info("Controller:join()호출");
		service.joinMember(vo);
	}
}
