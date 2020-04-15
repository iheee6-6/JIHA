package com.jiha.jhpay.board.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jiha.jhpay.board.model.dao.BoardDao;
import com.jiha.jhpay.board.model.vo.Board;
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

}
