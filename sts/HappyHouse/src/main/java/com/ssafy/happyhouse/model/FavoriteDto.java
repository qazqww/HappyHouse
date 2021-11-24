package com.ssafy.happyhouse.model;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@ApiModel(value = "FavoriteDto : 관심지역 정보", description = "회원의 관심 지역에 대한 정보를 나타낸다.")
public class FavoriteDto {
	
	@ApiModelProperty(value = "관리 번호")			private int favno;
	@ApiModelProperty(value = "회원 아이디")		private String userid;
	@ApiModelProperty(value = "관심 지역 구군 코드")	private String gugunCode;
	@ApiModelProperty(value = "등록일")			private String addtime;
	
	public int getFavno() {
		return favno;
	}
	public void setFavno(int favno) {
		this.favno = favno;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getGugunCode() {
		return gugunCode;
	}
	public void setGugunCode(String gugunCode) {
		this.gugunCode = gugunCode;
	}
	public String getAddtime() {
		return addtime;
	}
	public void setAddtime(String addtime) {
		this.addtime = addtime;
	}
}
