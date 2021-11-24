package com.ssafy.happyhouse.model.service;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.happyhouse.model.ApartValueDto;
import com.ssafy.happyhouse.model.mapper.ApartValueMapper;

@Service
public class ApartValueServiceImpl implements ApartValueService {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public boolean registerValue(ApartValueDto valueDto) throws Exception {
		return sqlSession.getMapper(ApartValueMapper.class).registerValue(valueDto);
	}

	@Override
	public ApartValueDto getValue(String gugunCode) throws Exception {
		return sqlSession.getMapper(ApartValueMapper.class).getValue(gugunCode);
	}

}