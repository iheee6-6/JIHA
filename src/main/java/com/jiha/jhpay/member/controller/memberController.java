package com.jiha.jhpay.member.controller;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.WriterException;
import com.google.zxing.client.j2se.MatrixToImageConfig;
import com.google.zxing.client.j2se.MatrixToImageWriter;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.QRCodeWriter;
import com.jiha.jhpay.member.model.vo.Member;
import com.jiha.jhpay.member.model.service.MemberService;

@Controller
public class memberController {
	@Autowired
	private MemberService mService;
	
	@RequestMapping("signup.do")
	public String signup() {
		return "common/signup";
	}
	@RequestMapping("join.do")
	public String join(Member m, 
			@RequestParam("post") String post,
			@RequestParam("address1") String address1,
			@RequestParam("address2") String address2,
			@RequestParam("phone1") String phone1,
			@RequestParam("phone2") String phone2,
			@RequestParam("phone3") String phone3,
			Model model, HttpServletRequest request,HttpSession session
			) throws WriterException, IOException {
		
		m.setAddress(address1+","+address2);
		m.setPhone(phone1+"-"+phone2+'-'+phone3);
		
		m.setQrcode(makeqr(request,session,m.getStoreName()));
		
		int result = mService.insertMember(m);
		if(result>0) {
			model.addAttribute("msg", "회원가입이 완료 되었습니다. 로그인 해주세요.");
			return "common/login";
		}else {
			model.addAttribute("msg", "회원 가입 실패!!");
			return "common/errorPage";
		}
	}
	
	@RequestMapping("qr.do")
	public String makeqr(HttpServletRequest request,HttpSession session,String storeName) throws WriterException, IOException {
		
		String root = request.getSession().getServletContext().getRealPath("resources");

		String savePath = root + "\\qrCodes\\"; // 파일 경로 수정

		File file = new File(savePath);
        if(!file.exists()) {
            file.mkdirs();
        }
        String url = "localhost:8800/jhpay/enterStore.do?store="+storeName;
        // 코드인식시 링크걸 URL주소
        String codeurl = new String(url.getBytes("UTF-8"), "ISO-8859-1");
        // 큐알코드 바코드 생상값
        int qrcodeColor =   0xFF2e4e96;
        // 큐알코드 배경색상값
        int backgroundColor = 0xFFFFFFFF;
         
        QRCodeWriter qrCodeWriter = new QRCodeWriter();
        // 3,4번째 parameter값 : width/height값 지정
        BitMatrix bitMatrix = qrCodeWriter.encode(codeurl, BarcodeFormat.QR_CODE,200, 200);
        //
        MatrixToImageConfig matrixToImageConfig = new MatrixToImageConfig(qrcodeColor,backgroundColor);
        BufferedImage bufferedImage = MatrixToImageWriter.toBufferedImage(bitMatrix,matrixToImageConfig);
        // ImageIO를 사용한 바코드 파일쓰기
        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
        String fileName=sdf.format(new Date()) +storeName;
        File temp =  new File(savePath+fileName+".png"); 
        //File temp =  File.createTempFile(fileName, ".png"); 
        ImageIO.write(bufferedImage, "png",temp);
        
        return fileName+".png";
	}
	
	@RequestMapping("dupId.do")
	public ModelAndView idDuplicateCheck(ModelAndView mv, String id) {
		
		boolean isUsable = mService.checkIdDup(id) == 0 ? true : false;
		
		Map map = new HashMap();
		map.put("isUsable", isUsable);
		
		mv.addAllObjects(map);
		
		mv.setViewName("jsonView");
		
		return mv; // json객체로 넘어감
	}
	
	@RequestMapping("enterStore.do")
	public ModelAndView enterStore(String storeName,ModelAndView mv) {
		mv.addObject("storeName", storeName);
		mv.setViewName("store/storeMenu");
		return mv;
	}
}
