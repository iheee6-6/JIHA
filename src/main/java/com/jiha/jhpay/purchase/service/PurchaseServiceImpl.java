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
		int result= pDao.insertOrder(purchase);
		result+= pDao.insertOrderB(purchase);
		result += pDao.updateMenuAmount(purchase);
		return result;
	}

	@Override
	public int getOrderNo(Purchase purchase) {
		return pDao.selectONum(purchase);
	}

}
