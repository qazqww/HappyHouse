package com.ssafy.happyhouse.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.ssafy.happyhouse.model.FavoriteDto;
import com.ssafy.happyhouse.model.service.FavoriteService;

import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

@CrossOrigin
@RestController
@RequestMapping("/favorite")
public class FavoriteController {
	
	@Autowired
	private FavoriteService favService;
	
	private static final String SUCCESS = "success";
	private static final String FAIL = "fail";
	
	@ApiOperation(value = "관심지역 목록", notes = "유저의 관심지역 목록을 반환한다.", response = List.class)
	@GetMapping("/{userid}")
	public ResponseEntity<List<FavoriteDto>> listFavorite(@PathVariable("userid") @ApiParam(value = "관심지역을 불러올 유저 ID", required = true) String userid) throws Exception {
		return new ResponseEntity<List<FavoriteDto>>(favService.listFavorite(userid), HttpStatus.OK);
	}
	
	@ApiOperation(value = "관심지역 중복 확인", notes = "관심지역이 이미 등록되었는지 확인한다.", response = String.class)
	@GetMapping()
	public ResponseEntity<String> checkFavorite(@RequestParam String userid, @RequestParam String gugunCode) throws Exception {
		Map<String, String> fav = new HashMap<>();
		fav.put("userid", userid);
		fav.put("gugunCode", gugunCode);
		int favCount = favService.checkFavorite(fav);
		if (favCount == 0) {
			return new ResponseEntity<String>(SUCCESS, HttpStatus.OK);
		}
		return new ResponseEntity<String>(FAIL, HttpStatus.NO_CONTENT);
	}
	
	@ApiOperation(value = "관심지역 등록", notes = "새로운 관심지역을 등록한다. 그리고 DB입력 성공여부에 따라 'success' 또는 'fail' 문자열을 반환한다.", response = String.class)
	@PostMapping
	public ResponseEntity<String> registerFavorite(@RequestBody @ApiParam(value = "등록할 관심지역 정보", required = true) FavoriteDto favDto) throws Exception {
		if (favService.registerFavorite(favDto)) {
			return new ResponseEntity<String>(SUCCESS, HttpStatus.OK);
		}
		return new ResponseEntity<String>(FAIL, HttpStatus.NO_CONTENT);
	}
	
	@ApiOperation(value = "관심지역 삭제", notes = "번호에 해당하는 관심지역을 삭제한다. 그리고 DB입력 성공여부에 따라 'success' 또는 'fail' 문자열을 반환한다.", response = String.class)
	@DeleteMapping("/{favno}")
	public ResponseEntity<String> deleteFavorite(@PathVariable("favno") @ApiParam(value = "삭제할 관심지역 번호", required = true) int favno) throws Exception {
		if (favService.deleteFavorite(favno)) {
			return new ResponseEntity<String>(SUCCESS, HttpStatus.OK);
		}
		return new ResponseEntity<String>(FAIL, HttpStatus.NO_CONTENT);
	}
}
