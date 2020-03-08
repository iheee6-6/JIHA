package com.jiha.jhpay.member.model.service;


import com.jiha.jhpay.member.model.vo.Member;

public interface MemberService {

	int insertMember(Member m);

	int checkIdDup(String id);

}
