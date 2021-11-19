package com.ssafy.happyhouse.model.mapper;

import java.util.List;

import com.ssafy.happyhouse.model.QnaDto;

public interface QnaMapper {

	boolean registerArticle(QnaDto qnaDto) throws Exception;
	List<QnaDto> listArticle() throws Exception;
//	List<QnaDto> listArticle(Map<String, String> map) throws Exception;
	QnaDto getArticle(int articleNo) throws Exception;
	void updateHit(int articleNo) throws Exception;
	boolean updateArticle(QnaDto qnaDto) throws Exception;
	boolean deleteArticle(int articleNo) throws Exception;
	
}
