package com.ssafy.happyhouse.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.ssafy.happyhouse.model.HospitalDto;
import com.ssafy.happyhouse.model.service.HospitalService;

import io.swagger.annotations.ApiOperation;

@CrossOrigin
@RestController
@RequestMapping("/hospital")
public class HospitalController {
	
	@Autowired
	private HospitalService hospitalService;
	
	@ApiOperation(value = "선별 진료소 목록", notes = "요청한 시도/구군에 있는 선별 진료소 목록을 반환한다.", response = List.class)
	@GetMapping
	public ResponseEntity<List<HospitalDto>> listFavorite(@RequestParam String sidoName, @RequestParam String gugunName) throws Exception {
		Map<String, String> location = new HashMap<>();
		location.put("sidoName", sidoName);
		location.put("gugunName", gugunName);
		return new ResponseEntity<List<HospitalDto>>(hospitalService.listHospital(location), HttpStatus.OK);
	}
	
}
