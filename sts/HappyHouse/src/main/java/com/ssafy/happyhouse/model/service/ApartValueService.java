package com.ssafy.happyhouse.model.service;

import com.ssafy.happyhouse.model.ApartValueDto;

public interface ApartValueService {
	boolean registerValue(ApartValueDto valueDto) throws Exception;
	ApartValueDto getValue(String gugunCode) throws Exception;
}
