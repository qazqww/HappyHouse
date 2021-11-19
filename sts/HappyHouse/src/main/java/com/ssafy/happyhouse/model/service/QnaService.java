package com.ssafy.happyhouse.model.service;

import java.util.List;

import com.ssafy.happyhouse.model.QnaDto;

public interface QnaService {

	boolean registerArticle(QnaDto noticeDto) throws Exception;
	List<QnaDto> listArticle() throws Exception;
//	List<QnaDto> listArticle(String key, String word) throws Exception;
	QnaDto getArticle(int articleNo) throws Exception;
	void updateHit(int articleNo) throws Exception;
	boolean updateArticle(QnaDto noticeDto) throws Exception;
	boolean deleteArticle(int articleNo) throws Exception;
	
}
