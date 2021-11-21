package com.ssafy.happyhouse.model.service;

import java.util.List;

import com.ssafy.happyhouse.model.MemoDto;

public interface MemoService {
	List<MemoDto> listMemo(int articleno) throws Exception;
	boolean registerMemo(MemoDto memoDto) throws Exception;
	boolean updateMemo(MemoDto memoDto) throws Exception;
	boolean deleteMemo(int memono) throws Exception;
}
