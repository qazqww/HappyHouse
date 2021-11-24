package com.ssafy.happyhouse.model.service;

import java.util.List;
import java.util.Map;

import com.ssafy.happyhouse.model.HospitalDto;

public interface HospitalService {
	List<HospitalDto> listHospital(Map<String, String> location) throws Exception;
}
