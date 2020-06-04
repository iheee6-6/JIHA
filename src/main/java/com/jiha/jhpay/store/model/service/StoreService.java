package com.jiha.jhpay.store.model.service;

import java.util.ArrayList;

import com.jiha.jhpay.store.model.vo.Menu;

public interface StoreService {

	int insertMenu(Menu menu);

	ArrayList<Menu> selectMenuList(String m_no);

	int deleteMenu(String m_no, String string);

	ArrayList<Menu> selectStoreMenuList(String m_no);


}
