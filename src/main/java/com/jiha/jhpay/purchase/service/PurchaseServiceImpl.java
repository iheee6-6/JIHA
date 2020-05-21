package com.jiha.jhpay.purchase.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jiha.jhpay.purchase.dao.PurchaseDao;
import com.jiha.jhpay.purchase.vo.Purchase;

@Service("pService")
public class PurchaseServiceImpl implements PurchaseService {

	@Autowired
	PurchaseDao pDao;
	
	@Override
	public int insertOrder(Purchase purchase) {
		return pDao.insertOrder(purchase);
	}

}
