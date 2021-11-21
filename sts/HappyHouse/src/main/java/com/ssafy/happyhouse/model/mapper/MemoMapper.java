package com.ssafy.happyhouse.model.mapper;

import java.util.List;

import com.ssafy.happyhouse.model.MemoDto;

public interface MemoMapper {
	List<MemoDto> listMemo(int articleno) throws Exception;
	boolean registerMemo(MemoDto memoDto) throws Exception;
	boolean updateMemo(MemoDto memoDto) throws Exception;
	boolean deleteMemo(int memono) throws Exception;
}
