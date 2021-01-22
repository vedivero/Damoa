package com.damoa.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.damoa.domain.MemberVO;
import com.damoa.persistence.MemberDAO;

@Service("MemberService")
public class MemberServiceImpl implements MemberService{

	//DAO주입
	@Inject
	private MemberDAO mdao;
	
	//회원가입
	@Override
	public void joinMember(MemberVO vo) {
		mdao.joinMember(vo);
	}

	
}