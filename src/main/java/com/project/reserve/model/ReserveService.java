package com.project.reserve.model;

import java.sql.SQLException;
import java.util.List;

import com.project.v_reserve.model.ReserveViewVO;

public class ReserveService {
	private ReserveDAO dao;
	
	public ReserveService(){
		dao = new ReserveDAO();
	}
	
	public int insertReserve(ReserveVO vo) throws SQLException {
		return dao.insertReserve(vo);
	}
	//예매 수정
	public int updateReserve(ReserveVO vo) throws SQLException {
		return dao.updateReserve(vo);
	}
	//예매 취소 
	public int deleteReserve(int reserveNo) throws SQLException {
		return dao.deleteReserve(reserveNo);
	}
	
	public List<ReserveViewVO> selectByMemberno(int memberNo) throws SQLException{
		return dao.selectByMemberno(memberNo);
	}
}
