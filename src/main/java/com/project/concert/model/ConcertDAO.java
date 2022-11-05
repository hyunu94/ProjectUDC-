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
}
