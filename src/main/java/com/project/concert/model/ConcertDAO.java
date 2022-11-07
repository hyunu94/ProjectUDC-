package com.project.concert.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

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
	
	public int UpdateCon(ConcertVO vo) throws SQLException { //공연정보 업데이트
		Connection con = null;
		PreparedStatement ps = null;
		int cnt = 0;
		
		try {
			con = pool.getConnection();
			
			String sql = "update concert\r\n"
					+ "set artist = ? , title = ? , content = ? , \r\n"
					+ "startdate = ? , enddate = ? , time = ? , \r\n"
					+ "price = ? , link = ? , thumbimg = ? , locationNo = ?\r\n"
					+ "where concertNo = ?";
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
			ps.setInt(10, vo.getConcertNo());
			
			cnt = ps.executeUpdate();
			
			if(cnt>0) {
				System.out.println("변경된 vo = " + vo);
			}
			
			return cnt;
		}finally {
			pool.dbClose(ps, con);
		}
	}
	
	public int deleteCon(int concertNo) throws SQLException { //공연정보 삭제
		Connection con = null;
		PreparedStatement ps = null;
		int cnt = 0;
		
		try {
			con = pool.getConnection();
			
			String sql = "delete from concert\r\n"
					+ "where concertNo = ?";
			ps = con.prepareStatement(sql);
			ps.setInt(1, concertNo);
			
			cnt = ps.executeUpdate();
			
			if(cnt>0) {
				System.out.println("삭제된 No = " + concertNo);
			}
			
			return cnt;
		}finally {
			pool.dbClose(ps, con);
		}
	}
	
	public List<ConcertVO> selectTitle() throws SQLException{ //공연 제목만 보기
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<ConcertVO> list = new ArrayList<>();
		
		try {
			con = pool.getConnection();
			
			String sql = "select concertNo,title from concert";
			ps = con.prepareStatement(sql);
			
			rs = ps.executeQuery();
			
			while(rs.next()) {
				int concertNo = rs.getInt(1);
				String title = rs.getString(2);
				
				ConcertVO vo= new ConcertVO();
				vo.setConcertNo(concertNo);
				vo.setTitle(title);
				
				list.add(vo);
			}
			System.out.println("공연 제목 찾기 list.size = " + list.size());
			
			return list;
		}finally {
			pool.dbClose(rs, ps, con);
		}
	}
}
