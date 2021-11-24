package com.ssafy.happyhouse.model.service;

import java.util.List;
import java.util.Map;

import com.ssafy.happyhouse.model.FavoriteDto;

public interface FavoriteService {
	List<FavoriteDto> listFavorite(String userid) throws Exception;
	int checkFavorite(Map<String, String> fav) throws Exception;
	boolean registerFavorite(FavoriteDto favDto) throws Exception;
	boolean deleteFavorite(int favno) throws Exception;
}
