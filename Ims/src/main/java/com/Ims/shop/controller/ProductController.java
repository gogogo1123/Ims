package com.Ims.shop.controller;

import java.io.File;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.Ims.shop.service.ProductService;
import  com.Ims.shop.vo.*;

@Controller
@RequestMapping("/shop/product/*")
public class ProductController {

	
	private ProductService productService;
	
	
	
	@Autowired
	public ProductController(ProductService productService) {
		this.productService = productService;
	}
	
	
	  @RequestMapping("write.do")
	  public String write() {
		  return "shop/product_write"; // 상품등록 페이지
	  }
	
	@RequestMapping("insert.do")
	public String write(ProductVo vo,HttpServletRequest request) {
		
		String filename = "-";
		if(!vo.getFile1().isEmpty()) {
			filename = vo.getFile1().getOriginalFilename();
			try {
				ServletContext application = request.getSession().getServletContext();
				String path = application.getRealPath("/resources/images/");
				System.out.println("path =" +path);
				
				new File(path).mkdir();
				vo.getFile1().transferTo(new File(path+filename));
			} catch (Exception e) {
                 e.printStackTrace();
			}
		}
		
		vo.setFilename(filename);
		productService.insert(vo);
		return "redirect:/shop/product/list.do";
		
	}
	
	
	@RequestMapping("list.do")
	public ModelAndView list(ModelAndView mav) {
		mav.setViewName("/shop/product_list");
		mav.addObject("list", productService.list());
		return mav;
	}
	
}
