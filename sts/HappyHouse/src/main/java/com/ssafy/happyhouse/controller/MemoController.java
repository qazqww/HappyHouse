package com.ssafy.happyhouse.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ssafy.happyhouse.model.MemoDto;
import com.ssafy.happyhouse.model.service.MemoService;

import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

@RestController
@RequestMapping("/memo")
public class MemoController {
	
	private static final String SUCCESS = "success";
	private static final String FAIL = "fail";
	
	@Autowired
	private MemoService memoService;

	@ApiOperation(value = "댓글 목록", notes = "선택한 게시글의 댓글 목록을 반환한다.", response = List.class)
	@GetMapping("/{articleno}")
	public ResponseEntity<List<MemoDto>> listMemo(@PathVariable("articleno") @ApiParam(value = "댓글을 볼 게시글 번호", required = true) int articleno) throws Exception {
		return new ResponseEntity<List<MemoDto>>(memoService.listMemo(articleno), HttpStatus.OK);
	}
	
	@ApiOperation(value = "댓글 등록", notes = "새로운 댓글 정보를 입력한다. 그리고 DB입력 성공여부에 따라 'success' 또는 'fail' 문자열을 반환한다.", response = String.class)
	@PostMapping
	public ResponseEntity<String> registerMemo(@ApiParam(value = "수정할 댓글 정보", required = true) MemoDto memoDto) throws Exception {
		if (memoService.registerMemo(memoDto)) {
			return new ResponseEntity<String>(SUCCESS, HttpStatus.OK);
		}
		return new ResponseEntity<String>(FAIL, HttpStatus.NO_CONTENT);
	}
	
	@ApiOperation(value = "댓글 수정", notes = "수정된 댓글 정보를 입력한다. 그리고 DB수정 성공여부에 따라 'success' 또는 'fail' 문자열을 반환한다.", response = String.class)
	@PutMapping
	public ResponseEntity<String> updateMemo(@RequestBody @ApiParam(value = "수정할 댓글 정보", required = true) MemoDto memoDto) throws Exception {
		if (memoService.updateMemo(memoDto)) {
			return new ResponseEntity<String>(SUCCESS, HttpStatus.OK);
		}
		return new ResponseEntity<String>(FAIL, HttpStatus.NO_CONTENT);
	}
	
	@ApiOperation(value = "댓글 삭제", notes = "댓글 번호에 해당하는 댓글 정보를 삭제한다. 그리고 DB삭제 성공여부에 따라 'success' 또는 'fail' 문자열을 반환한다.", response = String.class)
	@DeleteMapping("/{memono}")
	public ResponseEntity<String> deleteMemo(@PathVariable("memono") @ApiParam(value = "삭제할 댓글의 댓글 번호", required = true) int memono) throws Exception {
		if (memoService.deleteMemo(memono)) {
			return new ResponseEntity<String>(SUCCESS, HttpStatus.OK);
		}
		return new ResponseEntity<String>(FAIL, HttpStatus.NO_CONTENT);
	}
}
