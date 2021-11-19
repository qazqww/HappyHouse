package com.ssafy.happyhouse.model;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@ApiModel(value = "QnaDto : QnA 게시글 정보", description = "QnA 게시판 게시글의 상세 정보를 나타낸다.")
public class QnaDto {
	
	@ApiModelProperty(value = "글 번호")		private int articleNo;
	@ApiModelProperty(value = "작성자 아이디")	private String userId;
	@ApiModelProperty(value = "글 제목")		private String subject;
	@ApiModelProperty(value = "글 내용")		private String content;
	@ApiModelProperty(value = "조회수")		private int hit;
	@ApiModelProperty(value = "작성일")		private String regTime;

	public int getArticleNo() {
		return articleNo;
	}

	public void setArticleNo(int articleNo) {
		this.articleNo = articleNo;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
	
	public int getHit() {
		return hit;
	}

	public void setHit(int hit) {
		this.hit = hit;
	}

	public String getRegTime() {
		return regTime;
	}

	public void setRegTime(String regTime) {
		this.regTime = regTime;
	}
}
