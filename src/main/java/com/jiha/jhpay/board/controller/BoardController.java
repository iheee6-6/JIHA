package com.jiha.jhpay.board.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.jiha.jhpay.board.exception.BoardException;
import com.jiha.jhpay.board.model.service.BoardService;
import com.jiha.jhpay.board.model.vo.Board;
import com.jiha.jhpay.common.Pagination;

@Controller
public class BoardController {
	@Autowired
	private BoardService bService;

	@RequestMapping("qnaView.do")
	public ModelAndView qnaView(ModelAndView mv,
			@RequestParam(value="page", required = false) Integer page) {
		int currentPage = page != null ? page : 1;
		
		ArrayList<Board> bList= bService.qnaList(currentPage);
		
		if(bList != null) {
			mv.addObject("list",bList);
			mv.addObject("pi",Pagination.getPageInfo());
			mv.setViewName("community/communityList");
		}else {
			throw new BoardException("커뮤니티 게시판 조회 실패!");
		}
		
		mv.setViewName("user/qnaView");
		return mv;

	}

	@RequestMapping(value = "qnaPwdCheck.do", produces = "application/text; charset=utf8")
	public String qnaView(HttpServletResponse response, String pwd, int no) {
		int result = bService.qnaPwdCheck(pwd, no);
		if (result > 0) {
			return "success";
		}
		return "비밀번호 틀림";
	}

	@RequestMapping("qnaInsertView.do")
	public String qnaInsertView() {
		
		return "user/qnaInsert";
	}
}
