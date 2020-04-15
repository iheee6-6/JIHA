package com.jiha.jhpay.board.model.service;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

import com.jiha.jhpay.board.model.vo.Board;


public interface BoardService {

	int qnaPwdCheck(String pwd, int no);

	ArrayList<Board> qnaList(int currentPage);
	
}
