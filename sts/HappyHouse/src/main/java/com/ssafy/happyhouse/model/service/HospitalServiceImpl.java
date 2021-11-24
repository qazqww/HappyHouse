package com.ssafy.happyhouse.model.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.happyhouse.model.HospitalDto;
import com.ssafy.happyhouse.model.mapper.HospitalMapper;

@Service
public class HospitalServiceImpl implements HospitalService {
	
	@Autowired
	SqlSession sqlSession;

	@Override
	public List<HospitalDto> listHospital(Map<String, String> location) throws Exception {
		return sqlSession.getMapper(HospitalMapper.class).listHospital(location);
	}

}
