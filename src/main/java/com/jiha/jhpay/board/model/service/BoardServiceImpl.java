package com.jiha.jhpay.board.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jiha.jhpay.board.model.dao.BoardDao;
import com.jiha.jhpay.board.model.vo.Board;
import com.jiha.jhpay.board.model.vo.Reply;
import com.jiha.jhpay.common.Pagination;
import com.jiha.jhpay.common.model.vo.PageInfo;

@Service("bService")
public class BoardServiceImpl implements BoardService {

	@Autowired
	BoardDao bDao;

	@Override
	public int qnaPwdCheck(String pwd, int no) {
		return bDao.qnaPwdCheck(pwd, no);
	}

	@Override
	public ArrayList<Board> qnaList(int currentPage) {
		int listCount = bDao.getListCount();

		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		return bDao.selectList(pi);
	}

	@Override
	public int insertBoard(Board board) {
		return bDao.insertBoard(board);
		
	}

	@Override
	public Board detailQna(int no, boolean flag) {
		if(!flag) {
			bDao.addReadCount(no);
		}
		
		return bDao.selectQna(no);
	}

	@Override
	public ArrayList<Reply> selectReplyList(int no) {
		return bDao.selectReplyList(no);
	}
	
	@Override
	public ArrayList<Reply> selectRReplyList(int refNo) {
		return bDao.selectRReplyList(refNo);
	}
	
	@Override
	public int insertReply(Reply r) {
		return bDao.insertReply(r);
	}

	@Override
	public int deleteReply(int rId) {
		return bDao.deleteReply(rId);
	}

	

	

}
