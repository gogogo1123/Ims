package com.Ims.shop.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.Ims.shop.service.NoticeService;
import com.Ims.shop.vo.NoticeVo;

@Controller
public class NoticeController {
	
	private NoticeService noticeService;
	
	@Autowired
	public NoticeController(NoticeService noticeService) {
		this.noticeService = noticeService;
	}
	
	/*
	 * @GetMapping("/nList.do") 
	 * public String getNoticeList(Model model) {
	 * 
	 * List<NoticeVo> noticeList = noticeService.getNoticeList();
	 * 
	 * model.addAttribute("noticeList", noticeList);
	 * 
	 * return "notice/noticeList"; }
	 */
	

	 @GetMapping("/noticeList.do") 
	 public String getNoticeList(Model model) {
	 
	 List<NoticeVo> noticeList = noticeService.getNoticeList();
	 
	 model.addAttribute("noticeList", noticeList);
	 
	 return "notice/noticeList"; 
	 }
	 
	
	
	@GetMapping("/noticeWrite.do")
	public String addNotice() {
		return "notice/noticeWrite";
	}
	
	@GetMapping("/noticeDelete.do")
	public String deleteNotice() {
		return "notice/noticeDelete";
	}
}
