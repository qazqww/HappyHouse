package com.ssafy.happyhouse.model.service;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.happyhouse.model.MemberDto;
import com.ssafy.happyhouse.model.mapper.MemberMapper;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public int idCheck(String id) throws Exception {
		return sqlSession.getMapper(MemberMapper.class).idCheck(id); // 0 or 1
	}

	@Override
	public boolean registerMember(MemberDto memberDto) throws Exception {
//		validation check
		return sqlSession.getMapper(MemberMapper.class).registerMember(memberDto);
	}

	@Override
	public MemberDto login(MemberDto memberDto) throws Exception {
		return sqlSession.getMapper(MemberMapper.class).login(memberDto);
	}

	@Override
	public boolean updateMember(MemberDto memberDto) throws Exception {
		return sqlSession.getMapper(MemberMapper.class).updateMember(memberDto);
	}

	@Override
	public boolean deleteMember(String id) throws Exception {
		return sqlSession.getMapper(MemberMapper.class).deleteMember(id);
	}

	@Override
	public MemberDto info(String id) throws Exception {
		return sqlSession.getMapper(MemberMapper.class).info(id);
	}
	
}
