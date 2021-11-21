package com.ssafy.happyhouse.model.service;

import java.util.List;

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
	public boolean registerArticle(NoticeDto noticeDto) throws Exception {
		return sqlSession.getMapper(NoticeMapper.class).registerArticle(noticeDto);
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
	public NoticeDto getArticle(int articleno) throws Exception {
		return sqlSession.getMapper(NoticeMapper.class).getArticle(articleno);
	}

	@Override
	public void updateHit(int articleno) throws Exception {
		sqlSession.getMapper(NoticeMapper.class).updateHit(articleno);
	}

	@Override
	public boolean updateArticle(NoticeDto noticeDto) throws Exception {
		return sqlSession.getMapper(NoticeMapper.class).updateArticle(noticeDto);
	}

	@Override
	public boolean deleteArticle(int articleno) throws Exception {
		return sqlSession.getMapper(NoticeMapper.class).deleteArticle(articleno);
	}
}
