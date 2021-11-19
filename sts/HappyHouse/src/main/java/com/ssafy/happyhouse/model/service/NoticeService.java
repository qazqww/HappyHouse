package com.ssafy.happyhouse.model.service;

import java.util.List;

import com.ssafy.happyhouse.model.NoticeDto;

public interface NoticeService {

	void registerArticle(NoticeDto noticeDto) throws Exception;
	List<NoticeDto> listArticle() throws Exception;
//	List<NoticeDto> listArticle(String key, String word) throws Exception;
	NoticeDto getArticle(int articleNo) throws Exception;
	void updateArticle(NoticeDto noticeDto) throws Exception;
	void deleteArticle(int articleNo) throws Exception;
	
}
