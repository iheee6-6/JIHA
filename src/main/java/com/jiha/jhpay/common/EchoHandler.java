package com.jiha.jhpay.common;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import com.jiha.jhpay.common.EchoHandler;

public class EchoHandler extends TextWebSocketHandler{
	// 다중 사용자 이용 시 각 세션을 보관할 list
		private List<WebSocketSession> sessionList = new ArrayList<>();
		// 실행 시 확인용 로그 생성
		private Logger logger = LoggerFactory.getLogger(EchoHandler.class);

		// 사용자 연결이 되면 실행되는 메소드
		@Override
		public void afterConnectionEstablished(WebSocketSession session) throws Exception {
			// 연결이 되면 사용자를 sessionList에 추가
			sessionList.add(session);
			// 연결 된 사용자에게 부여 된 세션 아이디 출력
			logger.info("{}연결됨", session.getId());
			
			System.out.println("채팅방 입장자 : " + session.getId());
			// super.afterConnectionEstablished(session);
		}
		
		@Override
		protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
			System.out.println("session 주소 : " + session.getRemoteAddress());
			System.out.println(session.getAttributes().get("userName"));
			
			// 다수 인원에게 메세지를 전송하는 기능 구현
			for(WebSocketSession ss : sessionList) {
				ss.sendMessage(new TextMessage(session.getId() + "|" + message.getPayload()
				+ "|" + session.getRemoteAddress() + "|" + session.getAttributes().get("userName")));
			}
			// 1. 세션 아이디
			// 2. 전달 된 메세지
			// 3. ip
			// 4. 입장 시 입력한 userName
			// super.handleTextMessage(session, message);
		}
}
