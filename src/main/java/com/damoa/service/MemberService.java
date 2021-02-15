package com.damoa.service;

import com.damoa.domain.MemberVO;

public interface MemberService {

	//회원가입
	public void joinMember(MemberVO vo) throws Exception;

	//로그인 처리
	public MemberVO loginProc(MemberVO vo);

	// 회원가입시 아이디중복확인
	public int idCheck(String id);
	
}