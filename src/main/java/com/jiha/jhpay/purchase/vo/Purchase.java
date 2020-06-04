package com.jiha.jhpay.purchase.vo;

import java.sql.Date;


import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor 
@AllArgsConstructor 
@Setter
@Getter
@ToString

public class Purchase {
	private int purchaseNo; //주문 번호
	private String phone; //구매자 전화번호
	private Date buyDate; // 구매 날짜
	private Boolean status; //주문 현황
	//private int storeNo; //가게 번호
}