package com.damoa.persistence;


import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;
import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.damoa.domain.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO{

	@Inject 
	private SqlSession session;
	private static final String namespace = "com.damoa.mappers.memberMapper";
	
	@Override
	public void joinMember(MemberVO vo) {
		
		session.insert(namespace+".joinMember", vo);
	}

	//로그인 처리
	@Override
	public MemberVO checkMember(String id, String pw) throws Exception {
		Map<String, String> paramMap = new HashMap<String, String>();
		paramMap.put("id", id);
		paramMap.put("pw", pw);
		return session.selectOne(namespace+".checkMember",paramMap);
	}
	
	// 회원가입 아이디 중복확인
	@Override
	public int idCheck(String id) {
		return session.selectOne(namespace+".idCheck", id);
	}
	
}
