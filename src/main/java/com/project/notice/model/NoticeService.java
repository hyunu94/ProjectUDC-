package com.project.notice.model;

import java.sql.SQLException;

public class NoticeService {
	private NoticeDAO dao;
	
	public NoticeService(){
		dao = new NoticeDAO();
	}
	
	public int insertNotice(NoticeVO vo) throws SQLException { //공지사항 게시판 추가
		return dao.insertNotice(vo);
	}
	
	public int updateNotice(NoticeVO vo) throws SQLException { //공지사항 게시판 업데이트
		return dao.updateNotice(vo);
	}
	
	public int deleteNotice(int noticeNo , int memberNo ) throws SQLException { //공지사항 게시판 삭제 => 본인이 작성한 글인지 확인
		return dao.deleteNotice(noticeNo, memberNo);
	}
}
