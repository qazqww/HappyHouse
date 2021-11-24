package com.ssafy.happyhouse.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ssafy.happyhouse.model.ApartValueDto;
import com.ssafy.happyhouse.model.service.ApartValueService;

@CrossOrigin
@RestController
@RequestMapping("/value")
public class ApartValueController {
	
	@Autowired
	private ApartValueService valueService;
	
	private static final String SUCCESS = "success";
	private static final String FAIL = "fail";

	@PostMapping
	public ResponseEntity<String> registerValue(@RequestBody ApartValueDto valueDto) throws Exception {
		if (valueService.registerValue(valueDto)) {
			return new ResponseEntity<String>(SUCCESS, HttpStatus.OK);
		}
		return new ResponseEntity<String>(FAIL, HttpStatus.NO_CONTENT);
	}
	
	@GetMapping("/{gugun}")
	public ResponseEntity<ApartValueDto> getValue(@PathVariable("gugun") String gugunCode) throws Exception {
		return new ResponseEntity<ApartValueDto>(valueService.getValue(gugunCode), HttpStatus.OK);
	}
}
