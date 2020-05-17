package com.jiha.jhpay.board.controller;

import java.util.ArrayList;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.jiha.jhpay.board.exception.BoardException;
import com.jiha.jhpay.board.model.service.BoardService;
import com.jiha.jhpay.board.model.vo.Board;
import com.jiha.jhpay.board.model.vo.Reply;
import com.jiha.jhpay.common.Pagination;
import com.jiha.jhpay.member.model.vo.Member;

@Controller
public class BoardController {
	@Autowired
	private BoardService bService;

	@RequestMapping("qnaView.do")
	public ModelAndView qnaView(ModelAndView mv, @RequestParam(value = "page", required = false) Integer page) {
		int currentPage = page != null ? page : 1;

		ArrayList<Board> bList = bService.qnaList(currentPage);

		if (bList != null) {
			mv.addObject("qnaList", bList);
			mv.addObject("pi", Pagination.getPageInfo());
			mv.setViewName("user/qnaView");
		} else {
			throw new BoardException("qna 조회 실패!");
		}
		return mv;

	}

	@RequestMapping(value = "qnaPwdCheck.do", produces = "application/text; charset=utf8")
	public String qnaView(HttpServletResponse response, String pwd, int no) {
		System.out.println(pwd);System.out.println(no);
		int result = bService.qnaPwdCheck(pwd, no);
		System.out.println(result);
		if (result > 0) {
			System.out.println("굳");
			return "success";
		}
		System.out.println("왓?");
		return "no";
	}

	@RequestMapping("qnaInsertView.do")
	public String qnaInsertView() {

		return "user/qnaInsert";
	}

	@RequestMapping("insert_qna.do")
	public String insertQna(RedirectAttributes rd, Board board) {
		int result = bService.insertBoard(board);

		if (result > 0) {
			rd.addFlashAttribute("msg", "Qna 등록 완료!");
			return "redirect:qnaView.do";
		} else {
			throw new BoardException("등록 실패!");
		}

	}

	@RequestMapping("qnaDetail.do")
	public ModelAndView qnaDetail(ModelAndView mv, int no
			,HttpServletRequest request , HttpServletResponse response) {
		Board board = new Board();
		boolean flag = false;

		Cookie[] cookies = request.getCookies();
		if (cookies != null) {
			for (Cookie c : cookies) {
				if (c.getName().equals("no" + no)) {
					flag = true;
				}
			}

			if (!flag) {
				Cookie c = new Cookie("no" + no, String.valueOf(no));
				c.setMaxAge(1 * 24 * 60 * 60);
				response.addCookie(c);
			}
			board = bService.detailQna(no, flag);
		}

		mv.addObject("board", board);
		mv.setViewName("user/qnaDetail");
		return mv;
	}
	
	@RequestMapping(value="rList.do", produces="application/json; charset=utf-8")
	@ResponseBody
	public String getReplyList(int bNo) {
		ArrayList<Reply> rList = bService.selectReplyList(bNo);
		System.out.println(rList);
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd HH:mm:ss").create();
		// 시분초 다루고 싶다면 java.util.Date 사용
		return gson.toJson(rList);
	}
	
	@RequestMapping("addReply.do")
	@ResponseBody
	public String addReply(Reply r , HttpSession session) {
		System.out.println("hi");
		Member loginUser = (Member)session.getAttribute("loginUser");
		String rWriter = loginUser.getId();
		
		r.setRWriter(rWriter);
		
		int result = bService.insertReply(r);
		
		if(result>0) {
			return "success";
		}else {
			throw new BoardException("댓글 등록 실패!");
		}
		
	}
	
	@RequestMapping("rdelete.do")
	@ResponseBody
	public String deleteReply(int rNo) {
		
		int result = bService.deleteReply(rNo);
		
		if(result>0) {
			return "success";
		}else {
			throw new BoardException("댓글 삭제 실패!");
		}
	}


}
