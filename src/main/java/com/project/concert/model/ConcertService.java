package com.project.concert.model;

import java.sql.SQLException;

public class ConcertService {
	private ConcertDAO dao;
	
	public ConcertService(){
		dao = new ConcertDAO();
	}
	
	public String insertimg(ConcertVO vo) throws SQLException { // 썸네일 이미지이름 가져오기
		return dao.insertimg(vo);
	}
	
	public int insertConcert(ConcertVO vo) throws SQLException { // 공연정보 입력
		return dao.insertConcert(vo);
	}
	
	public int UpdateCon(ConcertVO vo) throws SQLException { //공연정보 업데이트
		return dao.UpdateCon(vo);
	}
	
	public int deleteCon(int concertNo) throws SQLException { //공연정보 삭제
		return dao.deleteCon(concertNo);
	}
}
