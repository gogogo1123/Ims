package com.Ims.shop.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.Ims.shop.vo.NoticeVo;
import com.Ims.shop.vo.NoticeVo1;


@Repository
public class NoticeDao {
	
	//MyBatis를 이용해서 DB작업: SqlSession 객체 필요
	
	private SqlSession sqlSession;
	
	public static final String MAPPER = "com.Ims.shop.notice";
	
	@Autowired
	public NoticeDao(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	public int addNotice(NoticeVo noticeVo) {
		return sqlSession.insert(MAPPER+".addNotice", noticeVo);
	}
	
	public List<NoticeVo> selectNoticeList(){
		return sqlSession.selectList(MAPPER+".selectNoticeList");	
	}

	public NoticeVo getNoticeView(int n_bidx) {
		return sqlSession.selectOne(MAPPER+".getNoticeView", n_bidx);
	}

	public NoticeVo getNoticeModify(Integer n_bidx) {
		return sqlSession.selectOne(MAPPER+".getNoticeModify", n_bidx);
	}
	
}
