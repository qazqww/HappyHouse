package com.ssafy.happyhouse.model.service;

import com.ssafy.happyhouse.model.MemberDto;

public interface MemberService {

	int idCheck(String id) throws Exception;
	boolean registerMember(MemberDto memberDto) throws Exception;
	MemberDto login(MemberDto memberDto) throws Exception;
	boolean updateMember(MemberDto memberDto) throws Exception;
	boolean deleteMember(String id) throws Exception;
	MemberDto info(String id) throws Exception;
}
