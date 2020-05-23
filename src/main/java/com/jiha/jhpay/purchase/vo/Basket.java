package com.jiha.jhpay.purchase.vo;

import com.jiha.jhpay.store.model.vo.Store;

public class Basket extends Store {

	private int purchaseNo; //예매번호
	private String menu_no; //메뉴 번호
	private String name; //상품명
	private int price; //가격
	private int count; //장바구니에 담을 개수
	private String need; // 구매자 요구사항
	private int type; // 포장/매장 타입
}
