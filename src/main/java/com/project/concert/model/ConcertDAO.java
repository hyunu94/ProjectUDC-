package com.project.concert.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import com.project.db.ConnectionPoolMgr2;
import com.project.v_cDetail.model.cDetailViewVO;
import com.project.v_list.model.ConcertListVO;

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
					+ "?,?,?,?,\r\n"
					+ "?,?,?);";
			ps = con.prepareStatement(sql);
			ps.setString(1, vo.getArtist());
			ps.setString(2, vo.getTitle());
			ps.setString(3, vo.getContent());
			ps.setTimestamp(4, vo.getStartdate());
			ps.setString(5, vo.getTime());
			ps.setInt(6, vo.getPrice());
			ps.setString(7, vo.getLink());
			ps.setString(8, vo.getThumbimg());
			ps.setInt(9,vo.getMemberNo());
			ps.setInt(10, vo.getLocationNo());
			
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
					+ "startdate = ? , time = ? , \r\n"
					+ "price = ? , link = ? , thumbimg = ? , locationNo = ?\r\n"
					+ "where concertNo = ?";
			ps = con.prepareStatement(sql);
			ps.setString(1, vo.getArtist());
			ps.setString(2, vo.getTitle());
			ps.setString(3, vo.getContent());
			ps.setTimestamp(4, vo.getStartdate());
			ps.setString(5, vo.getTime());
			ps.setInt(6, vo.getPrice());
			ps.setString(7, vo.getLink());
			ps.setString(8, vo.getThumbimg());
			ps.setInt(9, vo.getConcertNo());
			
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
			
			String sql = "select title from concert";
			ps = con.prepareStatement(sql);
			
			rs = ps.executeQuery();
			
			while(rs.next()) {
				String title = rs.getString(1);
				
				ConcertVO vo= new ConcertVO();
				vo.setTitle(title);
				System.out.println("title : " + vo.getTitle());
				
				list.add(vo);
			}
			System.out.println("공연 제목 찾기 list.size = " + list.size());
			
			return list;
		}finally {
			pool.dbClose(rs, ps, con);
		}
	}
	
	public int selectConcertNo(String title) throws SQLException{ //공연 번호찾기
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		int concertNo = 0;
		
		try {
			con = pool.getConnection();
			
			String sql = "select concertNo from concert\r\n"
					+ " where title like '%' || ? || '%'";
			ps = con.prepareStatement(sql);
			ps.setString(1, title);
			
			rs = ps.executeQuery();
			
			if(rs.next()) {
				concertNo = rs.getInt(1);
			}
			System.out.println(title + "의 번호 : " + concertNo);
			
			return concertNo;
		}finally {
			pool.dbClose(rs, ps, con);
		}
	}
	
	public List<ConcertListVO> selectAll() throws SQLException { //공연 정보 리스트 내용 전부 가져오기
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<ConcertListVO> list = new ArrayList<>();
		
		try {
			con = pool.getConnection();
			
			String sql = "select * from v_list order by concertNo desc";
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				int concertNo = rs.getInt(1);
				String artist = rs.getString(2);
				String title = rs.getString(3);
				Timestamp regdate = rs.getTimestamp(4);
				String name = rs.getString(5);
				
				ConcertListVO vo 
					= new ConcertListVO(concertNo, artist, title, regdate, name);
				list.add(vo);
			}
			System.out.println("list.size = " + list.size());
			return list;
		}finally {
			pool.dbClose(rs, ps, con);
		}
	}
	
	public cDetailViewVO selectbyNo(int concertNo) throws SQLException { //공연번호로 전체조회
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		cDetailViewVO vo = new cDetailViewVO();
		
		try {
			con = pool.getConnection();
			
			String sql = "select * from v_cDetailview\r\n"
					+ "where concertNo = ?";
			ps = con.prepareStatement(sql);
			ps.setInt(1, concertNo);
			rs = ps.executeQuery();
			
			if(rs.next()) {
				int concertno = rs.getInt(1);
				String artist = rs.getString(2);
				String title = rs.getString(3);
				String content = rs.getString(4);
				Timestamp startdate = rs.getTimestamp(5);
				String time = rs.getString(6);
				int price = rs.getInt(7);
				String thumbimg = rs.getString(8);
				String address = rs.getString(9);
				String addressDetail = rs.getString(10);
				String locationname = rs.getString(11);
				String mobile = rs.getString(12);
				
				vo.setConcertNo(concertno);
				vo.setArtist(artist);
				vo.setTitle(title);
				vo.setContent(content);
				vo.setStartdate(startdate);
				vo.setTime(time);
				vo.setPrice(price);
				vo.setThumbimg(thumbimg);
				vo.setAddress(address);
				vo.setAddressDetail(addressDetail);
				vo.setLocationName(locationname);
				vo.setMobile(mobile);
			}
			System.out.println("view 로 만든 vo = " + vo);
			return vo;
		}finally {
			pool.dbClose(rs, ps, con);
		}
		
	}
}
