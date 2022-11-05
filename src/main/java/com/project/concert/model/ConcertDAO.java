package com.project.concert.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.project.db.ConnectionPoolMgr2;

public class ConcertDAO {
	private ConnectionPoolMgr2 pool;
	
	public ConcertDAO() {
		pool = new ConnectionPoolMgr2();
	}
	
	public String insertimg(ConcertVO vo) throws SQLException { // 썸네일 이미지이름 가져오기
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String img = "";
		
		try {
			con = pool.getConnection();
			String sql = "select thumbimg from concert;\r\n"
					+ "where concertNo = ?";
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			
			if(rs.next()) {
				img = rs.getString(1);
			}
			
			return img;
		}finally {
			pool.dbClose(rs, ps, con);
		}
	}
	
	public int insertConcert(ConcertVO vo) throws SQLException { // 공연정보 입력
		Connection con = null;
		PreparedStatement ps = null;
		int cnt = 0;
		
		try {
			con = pool.getConnection();
			
			String sql = "insert into concert\r\n"
					+ "values(concert_seq.nextval,?,?,?,\r\n"
					+ "?,?,?,?,?,\r\n"
					+ "?,?,?);";
			ps = con.prepareStatement(sql);
			ps.setString(1, vo.getArtist());
			ps.setString(2, vo.getTitle());
			ps.setString(3, vo.getContent());
			ps.setTimestamp(4, vo.getStartdate());
			ps.setTimestamp(5, vo.getEnddate());
			ps.setString(6, vo.getTime());
			ps.setInt(7, vo.getPrice());
			ps.setString(8, vo.getLink());
			ps.setString(9, vo.getThumbimg());
			ps.setInt(10, vo.getMemberNo());
			ps.setInt(11, vo.getLocationNo());
			
			cnt = ps.executeUpdate();
			
			if(cnt>0) {
				System.out.println("생성된 vo = " + vo);
			}
			
			return cnt;
			
		}finally {
			pool.dbClose(ps, con);
		}
	}
}
