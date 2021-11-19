package com.ssafy.happyhouse.model.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.happyhouse.model.NoticeDto;
import com.ssafy.happyhouse.model.mapper.NoticeMapper;

@Service
public class NoticeServiceImpl implements NoticeService {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public void registerArticle(NoticeDto noticeDto) throws Exception {
		sqlSession.getMapper(NoticeMapper.class).registerArticle(noticeDto);
	}
	
	@Override
	public List<NoticeDto> listArticle() throws Exception {
		return sqlSession.getMapper(NoticeMapper.class).listArticle();
	}

//	@Override
//	public List<NoticeDto> listArticle(String key, String word) throws Exception {
//		key = key == null ? "" : key.trim();
//		word = word == null ? "" : word.trim();
//		Map<String, String> map = new HashMap<>();
//		map.put("key", key);
//		map.put("word", word);
//		return sqlSession.getMapper(NoticeMapper.class).listArticle(map);
//	}

	@Override
	public NoticeDto getArticle(int articleNo) throws Exception {
		return sqlSession.getMapper(NoticeMapper.class).getArticle(articleNo);
	}

	@Override
	public void updateArticle(NoticeDto noticeDto) throws Exception {
		sqlSession.getMapper(NoticeMapper.class).updateArticle(noticeDto);
	}

	@Override
	public void deleteArticle(int articleNo) throws Exception {
		sqlSession.getMapper(NoticeMapper.class).deleteArticle(articleNo);
	}


}
