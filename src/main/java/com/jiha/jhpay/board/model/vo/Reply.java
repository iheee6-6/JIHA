package com.jiha.jhpay.board.model.vo;

import java.util.Date;

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
public class Reply {
	private int rNo;
	private String rContent;
	private int refBno;
	private String rWriter;
	private Date rEnrollDate;
	private String rStatus;

}
