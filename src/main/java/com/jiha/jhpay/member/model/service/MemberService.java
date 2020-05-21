package com.jiha.jhpay.member.model.service;


import com.jiha.jhpay.member.model.vo.Member;
import com.jiha.jhpay.store.model.vo.Purchase;

public interface MemberService {

	int insertMember(Member m);

	int checkIdDup(String id);

	Member loginMember(Member mem);

	int kakaoLogin(Member vo);



}
