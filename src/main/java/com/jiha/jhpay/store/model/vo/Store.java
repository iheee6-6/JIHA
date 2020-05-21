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
public class Store extends Member{
	private String StoreName;
	private int StoreNo;
}
