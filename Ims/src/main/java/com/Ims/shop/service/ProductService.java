package com.Ims.shop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Ims.shop.dao.ProductDao;
import com.Ims.shop.vo.ProductVo;

@Service
public class ProductService {
	
	
	private ProductDao productDao;
	
	
	
	@Autowired
	public ProductService(ProductDao productDao) {
		this.productDao = productDao;
	}

	
	
	public void insert(ProductVo vo) {
		productDao.insert(vo);
	}
	
	public List<ProductVo> list(){
		return productDao.list();
	}
	
}
