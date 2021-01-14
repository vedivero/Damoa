package com.damoa.persistence;

import org.apache.ibatis.session.SqlSession;

import com.damoa.domain.MemberVO;

public class MemberDAOImple implements MemberDAO{

	private SqlSession sqlSession;
	private static final String namespace = "com.damoa.mappers.memberMapper";
	
	//회원가입
	@Override
	public void joinMember(MemberVO vo) {

		sqlSession.insert(namespace+".joinMember",vo);
		
	}
	
}
