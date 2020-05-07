package com.jiha.jhpay.member.controller;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;
import java.util.List;


import javax.imageio.ImageIO;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fasterxml.jackson.databind.JsonNode;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.WriterException;
import com.google.zxing.client.j2se.MatrixToImageConfig;
import com.google.zxing.client.j2se.MatrixToImageWriter;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.QRCodeWriter;
import com.jiha.jhpay.member.model.vo.Member;
import com.jiha.jhpay.common.kakaoLogin;
import com.jiha.jhpay.member.exception.MemberException;
import com.jiha.jhpay.member.model.service.MemberService;


import javax.servlet.http.HttpSession;

import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.message.BasicNameValuePair;
import org.springframework.web.bind.annotation.RequestMethod;
import com.jiha.jhpay.common.kakaoLogin;
import com.jiha.jhpay.member.model.vo.Member;
import com.fasterxml.jackson.databind.JsonNode;
@SessionAttributes({"loginUser","msg"})

@Controller
public class MemberController {
	@Autowired
	private MemberService mService;
	
	@Autowired
	private JavaMailSender mailSender;
	
	private Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@RequestMapping("login.do")
	public String login(Member mem,Model model,HttpServletResponse response,RedirectAttributes rd) {
		Member loginMember = mService.loginMember(mem); //아이디로 비번 뽑고 암호화비번과 비교 후 가져옴

		
		if(loginMember !=null) {
			if(logger.isDebugEnabled())
				logger.info(loginMember.getId() + " 로그인");
			
//			Cookie cookie = new Cookie("user_check", loginMember.getId());
//			if (remember.equals("true")) {
//				response.addCookie(cookie);
//				System.out.println("쿠키 아이디저장 O");
//				// 쿠키 확인
//				// System.out.println("Service check" + cookie);
//			} else {
//				System.out.println("쿠키 아이디저장 X");
//				cookie.setMaxAge(0);
//				response.addCookie(cookie);
//			}
//
//			System.out.println("3단계-로그인단계");
//			// 세션 저장하기 전에 비밀번호 가리기
//			loginMember.setPwd("");

			model.addAttribute("loginUser", loginMember);
			return "store/storePage";
		}else {
			rd.addFlashAttribute("msg", "로그인 실패! 아이디,비밀번호를 확인해주세요.");
			return "redirect:loginPage.do";
			
		}
		
	}
	
	@RequestMapping("/loginPage.do")
	public String login() {
		return "common/login";
	}
	
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
        String url = "http://192.168.35.153/jhpay/enterStore.do?store="+storeName;
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
	
	
	@RequestMapping(value = "email.do")
	@ResponseBody
	public String mailSending(HttpServletRequest request, String email) {
		String setfrom = "jhPay";
		String tomail = email; // 받는 사람 이메일
		String title = "회원가입 이메일 인증 서비스(JHPAY)"; // 제목

		StringBuffer temp = new StringBuffer();
		Random rnd = new Random();
		for (int i = 0; i < 10; i++) {
			int rIndex = rnd.nextInt(3);
			switch (rIndex) {
			case 0:
				// a-z
				temp.append((char) ((int) (rnd.nextInt(26)) + 97));
				break;
			case 1:
				// A-Z
				temp.append((char) ((int) (rnd.nextInt(26)) + 65));
				break;
			case 2:
				// 0-9
				temp.append((rnd.nextInt(10)));
				break;
			}
		}

		String content =temp.toString(); // 내용
		try {
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");

			messageHelper.setFrom(new InternetAddress(setfrom, "tcatch")); // 보내는사람 생략하거나 하면 정상작동을 안함
			messageHelper.setTo(tomail); // 받는사람 이메일
			messageHelper.setSubject(title); // 메일제목은 생략이 가능하다
			messageHelper.setText(content); // 메일 내용
			mailSender.send(message);
		} catch (Exception e) {
			System.out.println(e);
		}

		return content;
	}
	
	@RequestMapping(value = "/kakaologin" , produces = "application/json", method = {RequestMethod.GET, RequestMethod.POST})
	public String kakaoLogin(@RequestParam("code") String code , Model model,HttpServletRequest request, HttpServletResponse response, HttpSession session) throws Exception{

		System.out.println("login!");
	  JsonNode token = kakaoLogin.getAccessToken(code);

	  JsonNode profile = kakaoLogin.getKakaoUserInfo(token.path("access_token").toString());
	  System.out.println(profile);
	  Member vo = kakaoLogin.changeData(profile);
	  vo.setId("k"+vo.getId());

	  System.out.println(session);
	  session.setAttribute("login", vo);
	  System.out.println(vo.toString());

	  vo.setQrcode(makeqr(request,session,vo.getStoreName()));
	  int result = mService.kakaoLogin(vo); 

		if(logger.isDebugEnabled())
				logger.info(vo.getId() + " 로그인");
			
			model.addAttribute("loginUser", vo);
			return "store/storePage";
		
	}
	

}
