package com.project.v_maker.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.project.db.ConnectionPoolMgr2;

public class MakerViewDAO {
	private ConnectionPoolMgr2 pool;
	
	public MakerViewDAO() {
		pool=new ConnectionPoolMgr2();
	}
	
	//마커찍을 정보들
	public List<MakerViewVO> selectAll() throws SQLException{
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		
		List<MakerViewVO> list = new ArrayList<>();
		try {
			con=pool.getConnection();
			
			String sql="select * from v_maker";
			ps=con.prepareStatement(sql);
			
			rs=ps.executeQuery();
			while(rs.next()) {
				int concertno=rs.getInt("concertno");
				String artist=rs.getString("artist");
				String startdate=rs.getString("startdate");
				String locationname=rs.getString("locationname");
				double axisx=rs.getDouble("axisx");
				double axisy=rs.getDouble("axisy");
				String thumbimg=rs.getString("thumbimg");
				
				MakerViewVO vo = new MakerViewVO(concertno, artist, startdate, locationname, axisx, axisy, thumbimg);
				list.add(vo);
				
			}
			System.out.println(list.size());
			return list;
		}finally {
			pool.dbClose(rs, ps, con);
		}
	}
}
