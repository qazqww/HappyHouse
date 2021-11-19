package com.ssafy.happyhouse.model.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.happyhouse.model.QnaDto;
import com.ssafy.happyhouse.model.mapper.QnaMapper;

@Service
public class QnaServiceImpl implements QnaService {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public boolean registerArticle(QnaDto qnaDto) throws Exception {
		return sqlSession.getMapper(QnaMapper.class).registerArticle(qnaDto);
	}
	
	@Override
	public List<QnaDto> listArticle() throws Exception {
		return sqlSession.getMapper(QnaMapper.class).listArticle();
	}

//	@Override
//	public List<QnaDto> listArticle(String key, String word) throws Exception {
//		key = key == null ? "" : key.trim();
//		word = word == null ? "" : word.trim();
//		Map<String, String> map = new HashMap<>();
//		map.put("key", key);
//		map.put("word", word);
//		return sqlSession.getMapper(QnaMapper.class).listArticle(map);
//	}

	@Override
	public QnaDto getArticle(int articleNo) throws Exception {
		return sqlSession.getMapper(QnaMapper.class).getArticle(articleNo);
	}
	
	@Override
	public void updateHit(int articleNo) throws Exception {
		sqlSession.getMapper(QnaMapper.class).updateHit(articleNo);
	}

	@Override
	public boolean updateArticle(QnaDto qnaDto) throws Exception {
		return sqlSession.getMapper(QnaMapper.class).updateArticle(qnaDto);
	}

	@Override
	public boolean deleteArticle(int articleNo) throws Exception {
		return sqlSession.getMapper(QnaMapper.class).deleteArticle(articleNo);
	}
}
