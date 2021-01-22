package com.damoa.persistence;

import com.damoa.domain.MemberVO;

public interface MemberDAO {

	//회원가입
	public void joinMember(MemberVO vo);
}