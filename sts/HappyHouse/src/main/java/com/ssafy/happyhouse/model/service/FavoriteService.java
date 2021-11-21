package com.ssafy.happyhouse.model.service;

import java.util.List;

import com.ssafy.happyhouse.model.FavoriteDto;

public interface FavoriteService {
	List<FavoriteDto> listFavorite(String userid) throws Exception;
	boolean registerFavorite(FavoriteDto favDto) throws Exception;
	boolean deleteFavorite(int favno) throws Exception;
}
