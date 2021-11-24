package com.ssafy.happyhouse.model.mapper;

import java.util.List;
import java.util.Map;

import com.ssafy.happyhouse.model.HospitalDto;

public interface HospitalMapper {
	List<HospitalDto> listHospital(Map<String, String> location) throws Exception;
}
