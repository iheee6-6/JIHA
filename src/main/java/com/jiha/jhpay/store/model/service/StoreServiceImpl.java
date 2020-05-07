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
	public ArrayList<Menu> selectMenuList(String id) {
		return sDao.selectMenuList(id);
	}

	@Override
	public int deleteMenu(String id, String menuNo) {
		return sDao.deleteMenu(id,menuNo);
	}

	@Override
	public int qnaPwdCheck(String pwd, int no) {
		return sDao.qnaPwdCheck(pwd,no);
	}

	@Override
	public ArrayList<Menu> selectStoreMenuList(String store) {
		return sDao.selectStoreMenuList(store);
	}
	

}
