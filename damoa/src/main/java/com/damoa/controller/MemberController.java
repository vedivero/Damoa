package com.damoa.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
	public String joinForm()throws Exception {
		l.info("Controller : joinForm호출");
		return "member/joinForm";
	}

	//로그인
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login()throws Exception {
		
		l.info("Controller : login view호출");
		return "member/login";
	}
	
	//회원가입
	@RequestMapping(value = "/join" ,method = RequestMethod.POST)
	public void join(MemberVO vo)throws Exception {
		l.info("Controller : join()호출");
		service.joinMember(vo);
	}
	
	
	
	//로그인 처리
	@RequestMapping(value = "loginProc",method = RequestMethod.GET)
	public String loginProc()throws Exception{
		return "redirect:/main";
	}
	
	
	@RequestMapping(value = "/loginProc",method = RequestMethod.POST)
	public String loginProc(MemberVO vo,HttpSession session,HttpServletRequest response,RedirectAttributes rttr,Model model)throws Exception {

		System.out.println("Controller - id :"+vo.getId());
		MemberVO loginVO = service.loginProc(vo);
		System.out.println("Controller : return resolve = "+loginVO);
		System.out.println("Controller : mvo-id : "+loginVO.getId());
		
		if(loginVO != null ) {
			session.setAttribute("id", loginVO.getId());
			model.addAttribute("mvo",loginVO);
		}
		return "redirect:/main";
	}
	
	@RequestMapping(value = "/logout",method = RequestMethod.GET)
	public String logout(HttpSession session)throws Exception {
		l.info("Controller : logout");
		session.invalidate();
		return "redirect:/main";
	}
}

