package com.damoa.persistence;


import javax.inject.Inject;
import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.damoa.domain.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO{

	//DB접근을 위한 SqlSession객체
	@Inject 
	private SqlSession session;

	//mapper의 위치
	private static final String namespace = "com.damoa.mappers.memberMapper";
	
	@Override
	public void joinMember(MemberVO vo) {
		
		session.insert(namespace+".joinMember", vo);
	}

	
}
