package com.project.comments.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.project.db.ConnectionPoolMgr2;

public class CommentsDAO {
	private ConnectionPoolMgr2 pool;
	
	public CommentsDAO() {
		pool = new ConnectionPoolMgr2();
	}
	
	public int insertComments(CommentsVO vo) throws SQLException { //댓글 달기
		Connection con = null;
		PreparedStatement ps = null;
		int cnt = 0;
		
		try {
			con = pool.getConnection();
			
			String sql = "insert into comments(commentsNo,content,boardNo,MemberNo)\r\n"
					+ "values(comments_seq.nextval,?,?,?)";
			ps = con.prepareStatement(sql);
			ps.setString(1, vo.getContent());
			ps.setInt(2, vo.getBoardNo());
			ps.setInt(3, vo.getMemberNo());
			
			cnt = ps.executeUpdate();
			
			if(cnt>0) {
				System.out.println("댓글 vo = " + vo);
			}
			return cnt;
		}finally {
			pool.dbClose(ps, con);
		}
	}
	
	public int updateComments(CommentsVO vo) throws SQLException { //댓글 수정
		Connection con = null;
		PreparedStatement ps = null;
		int cnt = 0;
		
		try {
			con = pool.getConnection();
			
			String sql = "update comments\r\n"
					+ "set content = ?\r\n"
					+ "where commentsNo = ?";
			ps = con.prepareStatement(sql);
			ps.setString(1, vo.getContent());
			ps.setInt(2, vo.getBoardNo());
			
			cnt = ps.executeUpdate();
			
			if(cnt>0) {
				System.out.println("댓글 수정 vo = " + vo);
			}
			return cnt;
		}finally {
			pool.dbClose(ps, con);
		}
	}
	
	public int deleteComments(int commentsNo) throws SQLException { //댓글 삭제처리
		Connection con = null;
		PreparedStatement ps = null;
		int cnt = 0;
		
		try {
			con = pool.getConnection();
			
			String sql = "update comments\r\n"
					+ "set delcheck = 'Y'\r\n"
					+ "where commentsNo = ?";
			ps = con.prepareStatement(sql);
			ps.setInt(1, commentsNo);
			
			cnt = ps.executeUpdate();
			
			if(cnt>0) {
				System.out.println("댓글 삭제처리 No = " + commentsNo);
			}
			return cnt;
		}finally {
			pool.dbClose(ps, con);
		}
	}
}
