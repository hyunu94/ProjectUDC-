package com.project.board.model;

import java.sql.Clob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import com.project.db.ConnectionPoolMgr2;
import com.project.v_board.model.BoardSelectVO;
import com.project.v_boardNo_search.model.DetailboardViewVO;

public class BoardDAO {
	private ConnectionPoolMgr2 pool;
	
	public BoardDAO() {
		pool = new ConnectionPoolMgr2();
	}
	
	public int insertBoard(BoardVO vo) throws SQLException { // 게시판 등록 ( 카테고리 1번은 후기 , 2번은 같이가요 , 3번은 잡담 )
		Connection con = null;
		PreparedStatement ps = null;
		int cnt = 0;
		
		try {
			con = pool.getConnection();
			
			String sql = "insert into board(boardNo,title,content,img,memberNo,concertNo,cateNo)\r\n"
					+ "values(board_seq.nextval,?,?,?,?,?,?)";
			
			ps = con.prepareStatement(sql);
			
			ps.setString(1, vo.getTitle());
			ps.setString(2, vo.getContent());
			ps.setString(3, vo.getImg());
			ps.setInt(4, vo.getMemberNo());
			ps.setInt(5, vo.getConcertNo());
			ps.setInt(6, vo.getCateNo());
			
			cnt = ps.executeUpdate();
			
			if(cnt>0) {
				System.out.println("생성된 게시판 : " + vo);
			}
			return cnt;
		}finally {
			pool.dbClose(ps, con);
		}
	}
	
	public int updateBoard(BoardVO vo) throws SQLException { // 게시판 업데이트
		Connection con = null;
		PreparedStatement ps = null;
		int cnt = 0;
		
		try {
			con = pool.getConnection();
			
			String sql = "update board\r\n"
					+ "set title = ? , content = ? , regdate = sysdate , img = ? ,\r\n"
					+ "concertNo = ? , categoryNo = ?\r\n"
					+ "where boardNo = ?";
			ps = con.prepareStatement(sql);
			ps.setString(1, vo.getTitle());
			ps.setString(2, vo.getContent());
			ps.setString(3, vo.getImg());
			ps.setInt(4, vo.getConcertNo());
			ps.setInt(5, vo.getCateNo());
			ps.setInt(6, vo.getBoardNo());
			
			if(cnt>0) {
				System.out.println("변경한 vo : " + vo);
			}
			return cnt;
		}finally {
			pool.dbClose(ps, con);
		}
	}
	
	public int deleteBoard(int boardNo) throws SQLException { //게시판 삭제 처리
		Connection con = null;
		PreparedStatement ps = null;
		int cnt = 0;
		
		try {
			con = pool.getConnection();
			
			String sql = "update board\r\n"
					+ "set Delcheck = 'Y'\r\n"
					+ "where boardNo = ?";
			ps = con.prepareStatement(sql);
			ps.setInt(1, boardNo);
			
			cnt = ps.executeUpdate();
			
			if(cnt>0) {
				System.out.println("삭제처리된 게시판번호 : " + boardNo);
			}
			return cnt;
		}finally {
			pool.dbClose(ps, con);
		}
	}
	
	public List<BoardSelectVO> selectAllBoard() throws SQLException { //게시판 전체 조회
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		List <BoardSelectVO> list = new ArrayList<>();
		
		try {
			con = pool.getConnection();
			
			String sql = "select * from v_boardall";
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				int boardNo = rs.getInt(1);
				String title = rs.getString(2);
				Timestamp regdate = rs.getTimestamp(3);
				int count = rs.getInt(4);
				int star = rs.getInt(5);
				String nick = rs.getString(6);
				int cateNo = rs.getInt(7);
				
				BoardSelectVO vo = new BoardSelectVO(boardNo, title, regdate, count, star, nick, cateNo);
				list.add(vo);
			}
			
			if(list.size()>0) {
				System.out.println("게시판 전체 조회 list.size = " + list.size());
			}
			return list;
		}finally {
			pool.dbClose(rs, ps, con);
		}
	}
	
	public List<BoardSelectVO> selectBoardBycate(int cateNo) throws SQLException { //게시판별로 조회
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		List <BoardSelectVO> list = new ArrayList<>();
		
		try {
			con = pool.getConnection();
			
			String sql = "select * from v_boardall\r\n"
					+ "where cateno = ?";
			ps = con.prepareStatement(sql);
			ps.setInt(1, cateNo);
			
			rs = ps.executeQuery();
			
			while(rs.next()) {
				int boardNo = rs.getInt(1);
				String title = rs.getString(2);
				Timestamp regdate = rs.getTimestamp(3);
				int count = rs.getInt(4);
				int star = rs.getInt(5);
				String nick = rs.getString(6);
				int cateNo2 = rs.getInt(7);
				
				BoardSelectVO vo = new BoardSelectVO(boardNo, title, regdate, count, star, nick, cateNo2);
				list.add(vo);
			}
			
			if(list.size()>0) {
				System.out.println("게시판 종류 번호 : " + cateNo + " 조회 list.size = " + list.size());
			}
			return list;
		}finally {
			pool.dbClose(rs, ps, con);
		}
	}
	
	public int updateCount(int boardNo) throws SQLException { //조회수 증가
		Connection con=null;
		PreparedStatement ps=null;

		try {
			//1,2
			con=pool.getConnection();

			//3
			String sql="update board\r\n"
					+ "    set count = count + 1\r\n"
					+ "    where boardNo = 1";
			ps=con.prepareStatement(sql);
			ps.setInt(1, boardNo);

			//4
			int cnt=ps.executeUpdate();
			System.out.println("조회수 증가 결과 cnt="+cnt+", 매개변수 no="+boardNo);
			return cnt;
		}finally {
			pool.dbClose(ps, con);
		}
	}
	
	public double updatestar(BoardVO vo) throws SQLException { //별점 구하기
		Connection con=null;
		PreparedStatement ps=null;
		PreparedStatement ps2 = null;
		ResultSet rs = null;
		int cnt = 0;
		double result=0;

		try {
			//1,2
			con=pool.getConnection();

			//3
			String sql="update board\r\n"
					+ "    set starcount = starcount + 1 , star = star + ?\r\n"
					+ "    where boardNo = ?";
			ps=con.prepareStatement(sql);
			ps.setDouble(1, vo.getStar());
			ps.setInt(2, vo.getBoardNo());

			//4
			cnt=ps.executeUpdate();
			System.out.println("별점 추가 결과 cnt="+cnt+", 매개변수 no="+vo.getBoardNo());
			
			String sql2 = "select star/starcount from board where boardNo = ?";
			ps2 = con.prepareStatement(sql2);
			ps.setInt(1, vo.getBoardNo());
			
			rs = ps.executeQuery();
			if(rs.next()) {
				result = rs.getDouble(1);
			}
			
			System.out.println("별점 : " + result);
			return result;
		}finally {
			pool.dbClose(ps, con);
		}
	}
	
	public DetailboardViewVO selectByboardNO(int boardNo) throws SQLException { //게시판 detail 조회 뷰
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		DetailboardViewVO vo = null;
		
		try {
			con = pool.getConnection();
			
			String sql = "select * from v_boardNo_select\r\n"
					+ "where boardNo = ?";
			ps = con.prepareStatement(sql);
			ps.setInt(1, boardNo);
			
			rs = ps.executeQuery();
			
			while(rs.next()) {
				int boardNo2 = rs.getInt(1);
				String title = rs.getString(2);
				String content = rs.getString(3);
				int cateNo = rs.getInt(4);
				String nick = rs.getString(5);
				String catename = rs.getString(6);
				
				vo = new DetailboardViewVO(boardNo2, title, content, catename, nick, catename);
			}
			
			return vo;
		}finally {
			pool.dbClose(rs, ps, con);
		}
	}
	
	
}
