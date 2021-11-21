package com.ssafy.happyhouse.model.mapper;

import java.util.List;
import java.util.Map;

import com.ssafy.happyhouse.model.NoticeDto;

public interface NoticeMapper {

	boolean registerArticle(NoticeDto noticeDto) throws Exception;
	List<NoticeDto> listArticle() throws Exception;
	NoticeDto getArticle(int articleno) throws Exception;
	void updateHit(int articleno) throws Exception;
	boolean updateArticle(NoticeDto noticeDto) throws Exception;
	boolean deleteArticle(int articleno) throws Exception;
	
}
