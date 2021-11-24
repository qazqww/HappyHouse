package com.ssafy.happyhouse.model;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@ApiModel(value = "HospitalDto : 코로나 선별진료소 정보", description = "전국의 코로나 선별 진료소에 대한 정보를 나타낸다.")
public class HospitalDto {

	@ApiModelProperty(value = "번호")			private int hospno;
	@ApiModelProperty(value = "구군 위치")		private String gugunName;
	@ApiModelProperty(value = "시도 위치")		private String sidoName;
	@ApiModelProperty(value = "전화번호")		private String tel;
	@ApiModelProperty(value = "진료소 이름")	private String hospname;
	
	public int getHospno() {
		return hospno;
	}
	public void setHospno(int hospno) {
		this.hospno = hospno;
	}
	public String getGugunName() {
		return gugunName;
	}
	public void setGugunName(String gugunName) {
		this.gugunName = gugunName;
	}
	public String getSidoName() {
		return sidoName;
	}
	public void setSidoName(String sidoName) {
		this.sidoName = sidoName;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getHospname() {
		return hospname;
	}
	public void setHospname(String hospname) {
		this.hospname = hospname;
	}
}
