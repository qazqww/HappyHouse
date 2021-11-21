package com.ssafy.happyhouse.model.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.happyhouse.model.MemoDto;
import com.ssafy.happyhouse.model.mapper.MemoMapper;

@Service
public class MemoServiceImpl implements MemoService {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<MemoDto> listMemo(int articleno) throws Exception {
		return sqlSession.getMapper(MemoMapper.class).listMemo(articleno);
	}

	@Override
	public boolean registerMemo(MemoDto memoDto) throws Exception {
		return sqlSession.getMapper(MemoMapper.class).registerMemo(memoDto);
	}

	@Override
	public boolean updateMemo(MemoDto memoDto) throws Exception {
		return sqlSession.getMapper(MemoMapper.class).updateMemo(memoDto);
	}

	@Override
	public boolean deleteMemo(int memono) throws Exception {
		return sqlSession.getMapper(MemoMapper.class).deleteMemo(memono);
	}
}