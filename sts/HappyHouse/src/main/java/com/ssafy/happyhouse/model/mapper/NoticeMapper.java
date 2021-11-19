package com.ssafy.happyhouse.model.mapper;

import java.util.List;
import java.util.Map;

import com.ssafy.happyhouse.model.NoticeDto;

public interface NoticeMapper {

	void registerArticle(NoticeDto noticeDto) throws Exception;
	List<NoticeDto> listArticle() throws Exception;
//	List<NoticeDto> listArticle(Map<String, String> map) throws Exception;
	NoticeDto getArticle(int articleNo) throws Exception;
	void updateArticle(NoticeDto noticeDto) throws Exception;
	void deleteArticle(int articleNo) throws Exception;
	
}
