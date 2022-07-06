
package com.Ims.shop.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;


import com.Ims.shop.service.NoticeService;
import com.Ims.shop.vo.NoticeVo;

@Controller
public class NoticeController {

	private NoticeService noticeService;

	@Autowired
	public NoticeController(NoticeService noticeService) {
		
		this.noticeService = noticeService;
	}

	

	 @GetMapping("/noticeList.do") 
	 public String getNoticeList(Model model, HttpSession session) {
		 
	//	String member_idx = (String) session.getAttribute("member_idx");
		 
		List<NoticeVo> noticeList = noticeService.getNoticeList();
	
		model.addAttribute("noticeList", noticeList);
	
		return "notice/noticeList"; 
	 }

	 @GetMapping("noticeView.do")
		public String getNoticeView(Model model, NoticeVo noticeVo) {
			
			model.addAttribute("noticeView", noticeService.getNoticeView(noticeVo));
			
			return "notice/noticeView";
		}

	@GetMapping("/noticeWrite.do")
	public String noticeWite(HttpSession session, Model model) {
		
		return "notice/noticeWrite";
	}
	
	@PostMapping("/noticeWriteProcess.do")
	public String addNotice(NoticeVo noticeVo) {
		//요청매핑이 있는 메소드의 매개변수에 Vo나 자바클래스가 있는 경우 전달된 값을 그 객체에 매핑시켜줌
		//이러한 객체를 커맨드 객체라고 함.
		int result = noticeService.addNotice(noticeVo);
		
		String viewPage = null;
		
		if(result == 1) {
			viewPage = "redirect:/noticeList.do";
		}else {
			viewPage = "notice/noticeWrite";
		}
		
		return viewPage;
	}
	
	
		
	
	
	@PostMapping("/noticeModify.do")
	public String noticeModify(HttpSession session, Model model, NoticeVo noticeVo) {
		

		
		model.addAttribute("noticeModify", noticeService.getNoticeModify(noticeVo));
		
		return "notice/noticeModify";
	}
	
	@PostMapping("/noticeModifyProcess.do")
	public String getNoticeModify(NoticeVo noticeVo) {
		//요청매핑이 있는 메소드의 매개변수에 Vo나 자바클래스가 있는 경우 전달된 값을 그 객체에 매핑시켜줌
		//이러한 객체를 커맨드 객체라고 함.
		int result = noticeService.getNoticeModify(noticeVo);
		
		String viewPage = null;
		
		if(result == 1) {
			viewPage = "redirect:/noticeView.do";
		}else {
			viewPage = "notice/noticeModify";
		}
		
		return viewPage;
	}
	
	
	
	
	
	
	
	
	
}