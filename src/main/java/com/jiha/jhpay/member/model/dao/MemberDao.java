package com.jiha.jhpay.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jiha.jhpay.member.model.vo.Member;

@Repository("mDao")
public class MemberDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public int insertMember(Member m) {
		return sqlSession.insert("memberMapper.insertMember",m);
	}

	public int checkIdDup(String id) {
		return sqlSession.selectOne("memberMapper.dupId",id);
	}

	public Member selectMember(Member mem) {
		return sqlSession.selectOne("memberMapper.selectMember",mem);
	}

}
