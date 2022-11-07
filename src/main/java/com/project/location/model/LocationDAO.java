package com.project.location.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.project.db.ConnectionPoolMgr2;

public class LocationDAO {
	private ConnectionPoolMgr2 pool;

	public LocationDAO() {
		pool = new ConnectionPoolMgr2();
	}

	public int selectByaddress(String address, String addressDetail) throws SQLException { // 주소명과 상세주소로 No 찾기
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		int locationNo = 0;
		try {
			con = pool.getConnection();

			String sql = "select locationNo from location\r\n" + "where address = ? and addressdetail = ?";
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();

			if (rs.next()) {
				locationNo = rs.getInt(1);

				if (locationNo > 0) {
					System.out.println("찾은 locationNo = " + locationNo);
				}
			}
			return locationNo;
		} finally {
			pool.dbClose(rs, ps, con);
		}
	}
	
	public String updateXY(int locationNo , double x , double y) throws SQLException { //x,y 얻었을 경우 파라미터 No로 업데이트하기
		Connection con = null;
		PreparedStatement ps = null;
		String result = "";
		try {
			con = pool.getConnection();
			
			String sql = "update location\r\n"
					+ "set axisx = ? , axisy = ?\r\n"
					+ "where locationNo = ?";
			ps = con.prepareStatement(sql);
			ps.setInt(1, locationNo);
			ps.setDouble(2, x);
			ps.setDouble(3, y);
			
			boolean bool = ps.execute();
			
			if(bool) {
				result = "";
			}else {
				result = "";
			}
			System.out.println("x,y 입력 결과 : " + result);
			return result;
		}finally {
			
		}
	}
	
	public int insertLocation(LocationVO vo) throws SQLException {
		Connection con=null;
		PreparedStatement ps=null;
		
		try {
			con=pool.getConnection();
			
			String sql="insert into location(locationno, zipcode, address, addressdetail,axisx,axisy)\r\n"
					+ "values(70001,?,?,?,?,?)";
			ps=con.prepareStatement(sql);
			ps.setString(1, vo.getZipcode());
			ps.setString(2, vo.getAddress());
			ps.setString(3, vo.getAddressdetail());
			ps.setDouble(4, vo.getAxisx());
			ps.setDouble(5, vo.getAxisy());
			
			int cnt = ps.executeUpdate();
			
			System.out.println("location 등록결과 cnt="+cnt+"매개변수="+vo);
			return cnt;
		}finally {
			pool.dbClose(ps, con);
		}
	}
}
