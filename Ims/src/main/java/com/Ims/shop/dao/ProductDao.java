package com.Ims.shop.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.Ims.shop.vo.ProductVo;

@Repository
public class ProductDao {

	
	private SqlSession sqlSession;
	
	public static final String MAPPER = "product";
	
	@Autowired
	public ProductDao(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	
	
	public void insert(ProductVo vo) {
		sqlSession.insert(MAPPER+".insert",vo);
	}
	
	public List<ProductVo> list(){
		return sqlSession.selectList(MAPPER+".list");
	}
	
}
