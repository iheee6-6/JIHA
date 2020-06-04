package com.jiha.jhpay.member.model.vo;

import java.sql.Date;

import com.jiha.jhpay.member.model.vo.Member;

import lombok.AllArgsConstructor;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor // 인자 없는 생성자(기본 생성자)
@AllArgsConstructor // 모든 인자를 가진 생성자(매개변수 생성자)
@Setter
@Getter
@ToString
@EqualsAndHashCode

public class Member {
	private String name;
	private String id;
	private String m_no;
	private String address;
	private String phone;
	private String email;
	private String storeName;
	private String pwd;
	private String mStatus;
	private String enrollDate;
	
	private String qrcode;

}
