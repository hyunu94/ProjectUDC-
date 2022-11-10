package com.project.concert.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import com.project.v_cDetail.model.cDetailViewVO;
import com.project.v_index.model.IndexVO;
import com.project.v_list.model.ConcertListVO;

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
	
	public List<ConcertVO> selectNoTitle() throws SQLException{ //공연 제목만 보기
		return dao.selectTitle();
	}
	
	public int selectConcertNo(String title) throws SQLException{ //공연 번호찾기
		return dao.selectConcertNo(title);
	}
	
	public List<ConcertListVO> selectAll(String condition,String keyword) throws SQLException { //공연 정보 리스트 내용 전부 가져오기
		return dao.selectAll(condition,keyword);
	}
	
	public cDetailViewVO selectbyNo(int concertNo) throws SQLException { //공연번호로 전체조회
		return dao.selectbyNo(concertNo);
	}
	
	public List<IndexVO> selectImg() throws SQLException{
		return dao.selectImg();
	}
}
