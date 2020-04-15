package com.jiha.jhpay.board.model.vo;

import java.sql.Date;
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
public class Board {
	private String no;
	private String content;
	private String title;
	private String writer;
	private int count;
	private Date enroll_date;
	private Date modify_date;
	private String status;
	private String password;
}
