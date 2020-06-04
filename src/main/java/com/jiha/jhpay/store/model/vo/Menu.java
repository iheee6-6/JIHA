package com.jiha.jhpay.store.model.vo;

import lombok.AllArgsConstructor;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor 
@AllArgsConstructor 
@Setter
@Getter
@ToString
@EqualsAndHashCode

public class Menu extends Store{
	private String menu_no; //메뉴 번호
	private String name; //상품명
	private int price; //가격
	private String elsePoint; // 참고사항
	private String original_file; 
	private String rename_file; //수정한 파일이름 
	private int amount; // 총 수량
	private String menu_status; //삭제 여부
	

}
