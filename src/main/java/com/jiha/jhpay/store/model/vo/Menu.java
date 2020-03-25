package com.jiha.jhpay.store.model.vo;

import com.jiha.jhpay.member.model.vo.Member;

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

public class Menu {
	private String menu_no;
	private String m_no;
	private String m_id;
	private String name;
	private int price;
	private String elsePoint;
	private String original_file;
	private String rename_file;
	private int amount;
	private String menu_status;
}
