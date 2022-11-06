package com.project.notice.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.project.db.ConnectionPoolMgr2;

public class NoticeDAO {
	private ConnectionPoolMgr2 pool;
	
	public NoticeDAO(){
		pool = new ConnectionPoolMgr2();
	}
	
	public int insertNotice(NoticeVO vo) throws SQLException { //공지사항 게시판 추가
		Connection con = null;
		PreparedStatement ps = null;
		int cnt = 0;
		
		try {
			con = pool.getConnection();
			
			String sql = "insert into notice(noticeNo,title,content,memberNo)\r\n"
					+ "values(notice_seq.nextval,?,?,?)";
			ps = con.prepareStatement(sql);
			ps.setString(1, vo.getTitle());
			ps.setString(2, vo.getContent());
			ps.setInt(3, vo.getMemberNo());
			
			cnt = ps.executeUpdate();
			
			if(cnt>0) {
				System.out.println("공지사항 생성 vo : " + vo);
			}
			
			return cnt;

		}finally {
			pool.dbClose(ps, con);
		}
	}
	
	public int updateNotice(NoticeVO vo) throws SQLException { //공지사항 게시판 업데이트
		Connection con = null;
		PreparedStatement ps = null;
		int cnt = 0;
		
		try {
			con = pool.getConnection();
			
			String sql = "update notice\r\n"
					+ "set title = ? , content = ?\r\n"
					+ "where noticeNo = ? and memberNo = ?";
			ps = con.prepareStatement(sql);
			ps.setString(1, vo.getTitle());
			ps.setString(2, vo.getContent());
			ps.setInt(3, vo.getNoticeNo());
			ps.setInt(4, vo.getMemberNo());
			
			cnt = ps.executeUpdate();
			
			if(cnt>0) {
				System.out.println("공지사항 업데이트 번호 : " + vo.getMemberNo() + ","
						+ "공지사항 업데이트 vo : " + vo);
			}
			
			return cnt;

		}finally {
			pool.dbClose(ps, con);
		}
	}
	
	public int deleteNotice(int noticeNo , int memberNo ) throws SQLException { //공지사항 게시판 삭제 => 본인이 작성한 글인지 확인
		Connection con = null;
		PreparedStatement ps = null;
		int cnt = 0;
		
		try {
			con = pool.getConnection();
			
			String sql = "delete from notice\r\n"
					+ "where noticeNo = ? and memberNo = ?";
			ps = con.prepareStatement(sql);
			ps.setInt(1, noticeNo);
			ps.setInt(2, memberNo);
			
			cnt = ps.executeUpdate();
			
			if(cnt>0) {
				System.out.println("공지사항 삭제 번호 : " + noticeNo);
			}
			return cnt;
		}finally {
			pool.dbClose(ps, con);
		}
	}
}
