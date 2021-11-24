package com.ssafy.happyhouse.model.mapper;

import com.ssafy.happyhouse.model.ApartValueDto;

public interface ApartValueMapper {
	boolean registerValue(ApartValueDto valueDto) throws Exception;
	ApartValueDto getValue(String gugunCode) throws Exception;
}
