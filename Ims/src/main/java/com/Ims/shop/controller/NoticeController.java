
package com.Ims.shop.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.Ims.shop.service.NoticeService;
import com.Ims.shop.vo.NoticeVo;
import com.Ims.shop.vo.NoticeVo1;

@Controller
public class NoticeController {

	private NoticeService noticeService;

	@Autowired
	public NoticeController(NoticeService noticeService) {

		this.noticeService = noticeService;
	}


//	@RequestMapping(value="/noticeList.do")
//	
//	public ModelAndView openNoticeList(CommandMap commandMap, Model model) throws Exception {
//		
//		ModelAndView mav = new ModelAndView("/notice/noticeList");
//	
//		List<Map<String, Object>> list = noticeService.selectNoticeList(commandMap);
//		
//		mav.addObject("list", list);		
//		
//		System.out.println("#####################mav########################" +mav);
//	return mav;
//	
//	}

	
	
	
	@RequestMapping("/noticeList.do")
	public String openNoticeList(Model model) {
		
		//List<NoticeVo> NoticeList = noticeService.selectNoticeList();
		
		List<NoticeVo> noticeList = noticeService.selectNoticeList();
		
		model.addAttribute("NoticeList", noticeList);
				
		System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>NoticeList : "+ noticeList);
		
		return "notice/noticeList";
	}


	
	@RequestMapping("noticeView.do/{n_bidx}") // noticeView.do? n_bidx= ${noticeVo.n_bidx} 에서
										// ?뒤에 n_bidx= 해당 부분을 없애고
										// /로 대체할 수 있다.
										// 그 후 Controller에서 "noticeView.do" 를
										// "noticeView.do/{n_bidx}" 로 변경하였음

	// public String getNoticeView(Model model, NoticeVo noticeVo) {//원래 있던것
	public String getNoticeView(@PathVariable("n_bidx") Integer n_bidx, Model model) { // 내가 수정한것
		model.addAttribute("noticeView", noticeService.getNoticeView(n_bidx));

		return "notice/noticeView";
	}
	
	@RequestMapping("noticeMain.do/{n_bidx}")
	
	public String noticeMain(@PathVariable("n_bidx") Integer n_bidx, Model model) {
		
		model.addAttribute("noticeMain", noticeService.getNoticeView(n_bidx));
		System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>noticeMain : ");
		
		return "notice/noticeMain";
	}
	
	
	
	
	@RequestMapping("/noticeWrite.do")
	public String noticeWite(HttpSession session, Model model) {

		return "notice/noticeWrite";
	}

	@RequestMapping("/noticeWriteProcess.do")
	public String addNotice(NoticeVo noticeVo) {
		// 요청매핑이 있는 메소드의 매개변수에 Vo나 자바클래스가 있는 경우 전달된 값을 그 객체에 매핑시켜줌
		// 이러한 객체를 커맨드 객체라고 함.
		int result = noticeService.addNotice(noticeVo);

		String viewPage = null;

		if (result == 1) {
			viewPage = "redirect:/noticeList.do";
		} else {
			viewPage = "notice/noticeWrite";
		}

		return viewPage;
	}

//	@RequestMapping("/noticeModify.do/{n_bidx}")
//	public String getnoticeModify(@PathVariable("n_bidx") Integer n_bidx, Model model) {
//
//		model.addAttribute("noticeView", noticeService.getNoticeModify(n_bidx));
//		System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>getnoticeModify<<<<<<<<<<<<<<<<<<<<<<<<<<<<" +n_bidx);
//		/*
//		 * mav.setViewName("notice/notice"); mav.addObject("noticeModify",
//		 * noticeService.getNoticeModify(n_bidx));
//		 */
//	
//
//		return "notice/noticeModify";
//	}
//	
	@RequestMapping("/noticeModify.do/{n_bidx}")
	public String getnoticeModify(@PathVariable("n_bidx") Integer n_bidx, Model model) { // 내가 수정한것
		
			model.addAttribute("noticeView", noticeService.getNoticeView(n_bidx));
			System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>getnoticeModify<<<<<<<<<<<<<<<<<<<<<<<<<<<<" +n_bidx);
		return "notice/noticeModify";
	}
	

}