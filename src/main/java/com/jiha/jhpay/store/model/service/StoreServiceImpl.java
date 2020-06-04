package com.jiha.jhpay.store.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jiha.jhpay.store.model.dao.StoreDao;
import com.jiha.jhpay.store.model.vo.Menu;

@Service("sService")
public class StoreServiceImpl implements StoreService{
	@Autowired
	StoreDao sDao;

	@Override
	public int insertMenu(Menu menu) {
		return sDao.insertMenu(menu);
	}

	@Override
	public ArrayList<Menu> selectMenuList(String m_no) {
		return sDao.selectMenuList(m_no);
	}

	@Override
	public int deleteMenu(String m_no, String menuNo) {
		return sDao.deleteMenu(m_no,menuNo);
	}

	@Override
	public ArrayList<Menu> selectStoreMenuList(String m_no) {
		return sDao.selectStoreMenuList(m_no);
	}
	

}
