package com.ssafy.happyhouse.model.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.happyhouse.model.FavoriteDto;
import com.ssafy.happyhouse.model.mapper.FavoriteMapper;

@Service
public class FavoriteServiceImpl implements FavoriteService {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<FavoriteDto> listFavorite(String userid) throws Exception {
		return sqlSession.getMapper(FavoriteMapper.class).listFavorite(userid);
	}

	@Override
	public boolean registerFavorite(FavoriteDto favDto) throws Exception {
		return sqlSession.getMapper(FavoriteMapper.class).registerFavorite(favDto);
	}

	@Override
	public boolean deleteFavorite(int favno) throws Exception {
		return sqlSession.getMapper(FavoriteMapper.class).deleteFavorite(favno);
	}

}
