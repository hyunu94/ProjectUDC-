package com.project.reserve.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.project.db.ConnectionPoolMgr2;

public class ReserveDAO {
	private ConnectionPoolMgr2 pool;
	
	public ReserveDAO(){
		pool = new ConnectionPoolMgr2();
	}
	
	//예매 등록
	public int insertReserve(ReserveVO vo) throws SQLException {
		Connection con = null;
		PreparedStatement ps = null;
		
		try {
			con = pool.getConnection();
			
			String sql = "insert into reserve(reserveNo , memberNo , concertNo)\r\n"
					+ "values(reserve_seq.nextval,?,?)";
			ps = con.prepareStatement(sql);
			ps.setInt(1, vo.getMemberNo());
			ps.setInt(2, vo.getConcertNo());
			
			int cnt = ps.executeUpdate();
			
			if(cnt>0) {
				System.out.println("예매 등록 횟수 = " + cnt);
			}else {
				System.out.println("예매 등록 실패");
			}
			return cnt;
		}finally {
			pool.dbClose(ps, con);
		}
	}
	//예매 수정
	public int updateReserve(ReserveVO vo) throws SQLException {
		Connection con = null;
		PreparedStatement ps = null;
		
		try {
			con = pool.getConnection();
			
			String sql = "update reserve\r\n"
					+ "set concertNo = ?\r\n"
					+ "where reserveNo = ?";
			ps = con.prepareStatement(sql);
			ps.setInt(1, vo.getConcertNo());
			ps.setInt(2, vo.getReserveNo());
			
			int cnt = ps.executeUpdate();
			
			if(cnt>0) {
				System.out.println("업데이트 횟수 = " + cnt);
			}else {
				System.out.println("업데이트 실패");
			}
			return cnt;
		}finally {
			pool.dbClose(ps, con);
		}
	}
	//예매 취소 
	public int deleteReserve(int reserveNo) throws SQLException {
		Connection con = null;
		PreparedStatement ps = null;
		
		try {
			con = pool.getConnection();
			
			String sql = "delete from reserve\r\n"
					+ "where reserveNo = ?";
			ps = con.prepareStatement(sql);
			ps.setInt(1, reserveNo);
			
			int cnt = ps.executeUpdate();
			
			if(cnt>0) {
				System.out.println("삭제된 예매 갯수 = " + cnt);
			}else {
				System.out.println("예매 삭제 실패");
			}
			return cnt;
		}finally {
			pool.dbClose(ps, con);
		}
	}
	
}
