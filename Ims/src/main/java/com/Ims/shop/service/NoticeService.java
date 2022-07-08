package com.Ims.shop.service;

import java.util.List;
import java.util.Map;

import javax.activation.CommandMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Ims.shop.dao.NoticeDao;
import com.Ims.shop.vo.NoticeVo1;

@Service
public class NoticeService {
	
	private NoticeDao noticeDao;
	
	@Autowired
	public NoticeService(NoticeDao noticeDao) {
		this.noticeDao = noticeDao;
	}
	
	//글쓰기
	public int addNotice(NoticeVo1 noticeVo) {
		int result = 0;	//글쓰기 실패
		
		result = noticeDao.addNotice(noticeVo);
		
		return result;
	}
	
	
	//리스트 보기
	public List<NoticeVo1> selectNoticeList(){
		
		return noticeDao.selectNoticeList();
	}
	
	//글상세페이지보기
	public NoticeVo1 getNoticeView(Integer n_bidx) {
		return noticeDao.getNoticeView(n_bidx);
	}
	
	//글수정
	public NoticeVo1 getNoticeModify(int n_bidx) {
	
		
		return noticeDao.getNoticeModify(n_bidx);
		
	}

	public int getNoticeModifyProcess(NoticeVo1 noticeVo) {
		// TODO Auto-generated method stub
		return 0;
	}
}
