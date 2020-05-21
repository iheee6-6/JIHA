package com.jiha.jhpay.purchase.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jiha.jhpay.purchase.vo.Purchase;

@Repository("pDao")
public class PurchaseDao {

	@Autowired
	SqlSession sqlSession;
	
	public int insertOrder(Purchase purchase) {
		return sqlSession.insert("purchaseMapper.insertOrder",purchase);
	}

}
