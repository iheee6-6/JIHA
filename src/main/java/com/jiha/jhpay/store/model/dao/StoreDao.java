package com.jiha.jhpay.store.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jiha.jhpay.store.model.vo.Menu;

@Repository("sDao")
public class StoreDao {
	@Autowired
	SqlSessionTemplate sqlSession;
	
	public int insertMenu(Menu menu) {
		return sqlSession.insert("storeMapper.insertMenu",menu);
	}

	public ArrayList<Menu> selectMenuList(String m_no) {
		return (ArrayList)sqlSession.selectList("storeMapper.selectMenuList",m_no);
	}

	public int deleteMenu(String m_no, String menuNo) {
		Map<String,String> map = new HashMap<>();
		map.put("m_no", m_no);
		map.put("menuNo", menuNo);
		return sqlSession.update("storeMapper.deleteMenu",map);
	}

	public ArrayList<Menu> selectStoreMenuList(String store) {
		return (ArrayList)sqlSession.selectList("storeMapper.selectStoreMenuList",store);
	}
	
	

}
