package com.damoa.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.damoa.domain.MemberVO;

@Repository
public class MemberDAOImple implements MemberDAO{

	//DB연결
	@Inject
	private SqlSession sqlSession;
	private static final String namespace = "com.damoa.mappers.memberMapper";
	
	//회원가입
	@Override
	public void joinMember(MemberVO vo) {

		sqlSession.insert(namespace+".joinMember",vo);
		
	}
	
}
