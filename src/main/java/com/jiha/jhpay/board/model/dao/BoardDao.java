package com.jiha.jhpay.board.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jiha.jhpay.board.model.vo.Board;
import com.jiha.jhpay.common.model.vo.PageInfo;

@Repository("bDao")
public class BoardDao {
	@Autowired
	SqlSessionTemplate sqlSession;
	
	public int qnaPwdCheck(String pwd, int no) {
			Map<String,Object> map = new HashMap<>();
			map.put("pwd", pwd);
			map.put("no", no);
			return sqlSession.update("boardMapper.qnaPwdCheck",map);
		}

	public int getListCount() {
		return sqlSession.selectOne("boardMapper.getListCount");
	}

	public ArrayList<Board> selectList(PageInfo pi) {
		int offset = (pi.getCurrentPage() -1 ) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset,pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("boardMapper.selectList", null, rowBounds);
	
	}

}
