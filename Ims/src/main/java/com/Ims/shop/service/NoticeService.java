package com.Ims.shop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Ims.shop.dao.NoticeDao;
import com.Ims.shop.vo.NoticeVo;

@Service
public class NoticeService {
	
	private NoticeDao noticeDao;
	
	@Autowired
	public NoticeService(NoticeDao noticeDao) {
		this.noticeDao = noticeDao;
	}
	
	//글쓰기
	public int addNotice(NoticeVo noticeVo) {
		int result = 0;	//글쓰기 실패
		
		result = noticeDao.addNotice(noticeVo);
		
		return result;
	}
	
	
	//리스트 보기
	public List<NoticeVo> getNoticeList(){
		
		return noticeDao.getNoticeList();
	}
}
