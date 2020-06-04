package com.jiha.jhpay.board.model.service;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

import com.jiha.jhpay.board.model.vo.Board;
import com.jiha.jhpay.board.model.vo.Reply;


public interface BoardService {

	int qnaPwdCheck(String pwd, int no);

	ArrayList<Board> qnaList(int currentPage);

	int insertBoard(Board board);

	Board detailQna(int no, boolean flag);

	ArrayList<Reply> selectReplyList(int cNo);
	
	ArrayList<Reply> selectRReplyList(int refNo);

	int insertReply(Reply r);

	int deleteReply(int rId);

	
}
