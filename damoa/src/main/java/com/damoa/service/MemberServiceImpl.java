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
	public void joinMember(MemberVO vo) throws Exception {
		mdao.joinMember(vo);
	}

	//로그인 처리
	@Override
	public MemberVO loginProc(MemberVO vo) {

		MemberVO loginVO = null;
		try {
			loginVO = mdao.checkMember(vo.getId(),vo.getPw());
		} catch (Exception e) {
			e.printStackTrace();
			loginVO = null;
		}
		return loginVO;
	}

	
	
}