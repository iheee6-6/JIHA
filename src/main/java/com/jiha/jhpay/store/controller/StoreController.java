package com.jiha.jhpay.store.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.jiha.jhpay.member.model.vo.Member;
import com.jiha.jhpay.store.model.service.StoreService;
import com.jiha.jhpay.store.model.vo.Menu;

@Controller
public class StoreController {

	@Autowired
	private StoreService sService;
	
	@RequestMapping("enterStore.do")
	public ModelAndView enterStore(ModelAndView mv,String m_no) {
		
		ArrayList<Menu> mList=sService.selectStoreMenuList(m_no);
		
		mv.addObject("menuList", mList);
		mv.setViewName("user/enterStore");
		return mv;
	}
	@RequestMapping("dashb.do")
	public ModelAndView dashboard(ModelAndView mv, HttpSession session) {

		mv.setViewName("store/storePage");
		return mv;
	}

	@RequestMapping("bOrders.do")
	public ModelAndView bOrders(ModelAndView mv, HttpSession session) {
		mv.setViewName("store/bOrder");
		return mv;
	}

	@RequestMapping("bMenuList.do")
	public ModelAndView bMenuList(ModelAndView mv, HttpSession session) {
		Member mem= (Member) session.getAttribute("loginUser");
		
		ArrayList<Menu> mList=sService.selectMenuList(mem.getM_no());
		System.out.println(mList);
		mv.addObject("menuList", mList);
		mv.setViewName("store/storeMenu");
		return mv;
	}

	@RequestMapping("addMenu.do")
	public String addMenu(HttpServletRequest request, HttpSession session,RedirectAttributes rd,
			Menu menu, @RequestParam(value = "uploadFile", required = false) MultipartFile file) {
		
		Member mem=(Member) session.getAttribute("loginUser");
		menu.setM_no(mem.getM_no());
		
		if (!file.getOriginalFilename().equals("")) {
			String renameFileName = saveFile(file, request);

			if (renameFileName != null) {
				menu.setOriginal_file(file.getOriginalFilename());
				menu.setRename_file(renameFileName);
			}
		}
		
		int result =sService.insertMenu(menu);
		
		if(result>0) {
			rd.addFlashAttribute("msg", "메뉴가 등록되었습니다.");	
		}else {
		rd.addFlashAttribute("msg","메뉴 등록을 실패하였습니다.");
		}
		return "redirect:bMenuList.do";
	}
	
	
	public String saveFile(MultipartFile file, HttpServletRequest request) {

		String root = request.getSession().getServletContext().getRealPath("resources");

		String savePath = root + "\\buploadFiles"; // 파일 경로 수정

		File folder = new File(savePath);

		if (!folder.exists()) {
			folder.mkdirs();
		}

		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss"); //년월일시분초
		String originFileName = file.getOriginalFilename();
		String renameFileName = sdf.format(new Date()) 
				+ originFileName.substring(originFileName.lastIndexOf("."));

		String renamePath = folder + "\\" + renameFileName;

		try {
			file.transferTo(new File(renamePath)); // 전달받은 file이 rename명으로 저장

		} catch (Exception e) {
			System.out.println("파일 전송 에러 : " + e.getMessage());
		}

		return renameFileName;

	}
	
	@RequestMapping("menuDelete.do")
	public String menuDelete(HttpServletRequest request, HttpSession session,RedirectAttributes rd,
			@RequestParam(value="menuCh", required=false)ArrayList<String> menuCh ) {
		Member mem= (Member) session.getAttribute("loginUser");
		int result=0;
		for (int i = 0; i < menuCh.size(); i++)
			result += sService.deleteMenu(mem.getM_no(), menuCh.get(i));

		if(result>0) {
			rd.addFlashAttribute("msg", "정상적으로 삭제되었습니다.");	
		}else {
			rd.addFlashAttribute("msg","삭제 실패");
		}
		return "redirect:bMenuList.do";
	}
	
	@RequestMapping("sloveOrder")
	public String sloveOrder(@RequestParam(value="oNo")int oNo,RedirectAttributes rd) {
		return "redirect:bOrders.do";
	}
}
