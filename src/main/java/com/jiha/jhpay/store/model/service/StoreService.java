package com.jiha.jhpay.store.model.service;

import java.util.ArrayList;

import com.jiha.jhpay.store.model.vo.Menu;

public interface StoreService {

	int insertMenu(Menu menu);

	ArrayList<Menu> selectMenuList(String id);

	int deleteMenu(String id, String string);


}
