package com.ssafy.happyhouse.model.mapper;

import java.util.List;

import com.ssafy.happyhouse.model.FavoriteDto;

public interface FavoriteMapper {
	List<FavoriteDto> listFavorite(String userid) throws Exception;
	boolean registerFavorite(FavoriteDto favDto) throws Exception;
	boolean deleteFavorite(int favno) throws Exception;
}
