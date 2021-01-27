package com.damoa.persistence;

import com.damoa.domain.MemberVO;

public interface MemberDAO {

	//회원가입
	public void joinMember(MemberVO vo)throws Exception;
	
	//로그인 처리
	public MemberVO checkMember(String id,String pw)throws Exception;
}