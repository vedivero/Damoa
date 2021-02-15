package com.damoa.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/service/*")
public class ServiceController {

	private static final Logger l = LoggerFactory.getLogger(ServiceController.class);
	
	//마이페이지
	@RequestMapping(value = "/mypage", method = RequestMethod.GET)
	public String serviceMain() {
		l.info("ServiceController : call service main page");
		return "/service/mypage";
	}
}
