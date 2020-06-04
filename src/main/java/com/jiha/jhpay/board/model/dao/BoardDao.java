package com.jiha.jhpay.board.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jiha.jhpay.board.model.vo.Board;
import com.jiha.jhpay.board.model.vo.Reply;
import com.jiha.jhpay.common.model.vo.PageInfo;

@Repository("bDao")
public class BoardDao {
	@Autowired
	SqlSessionTemplate sqlSession;
	
	public int qnaPwdCheck(String pwd, int no) {
			Map<String,Object> map = new HashMap<>();
			map.put("pwd", pwd);
			map.put("no", no);
			return sqlSession.selectOne("boardMapper.qnaPwdCheck",map);
		}

	public int getListCount() {
		return sqlSession.selectOne("boardMapper.getListCount");
	}

	public ArrayList<Board> selectList(PageInfo pi) {
		int offset = (pi.getCurrentPage() -1 ) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset,pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("boardMapper.selectList", null, rowBounds);
	
	}

	public int insertBoard(Board board) {
		return sqlSession.insert("boardMapper.insertBoard",board);
	}

	public int addReadCount(int no) {
		return sqlSession.update("boardMapper.updateCount",no);
	}

	public Board selectQna(int no) {
		return sqlSession.selectOne("boardMapper.selectQna", no);
	}

	public ArrayList<Reply> selectReplyList(int no) {
		return (ArrayList)sqlSession.selectList("boardMapper.selectReplyList",no);
	}
	
	public ArrayList<Reply> selectRReplyList(int refNo) {
		return (ArrayList)sqlSession.selectList("boardMapper.selectRReplyList",refNo);
	}

	public int insertReply(Reply r) {
		return sqlSession.insert("boardMapper.insertReply",r);
	}

	public int deleteReply(int rId) {
		return sqlSession.update("boardMapper.deleteReply",rId);
	}


}
