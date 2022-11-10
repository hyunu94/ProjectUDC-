package com.project.board.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import com.project.v_board.model.BoardSelectVO;
import com.project.v_boardNo_search.model.DetailboardViewVO;

public class BoardService {
	private BoardDAO dao;
	
	public BoardService(){
		dao = new BoardDAO();
	}
	
	public int insertBoard(BoardVO vo) throws SQLException { // 게시판 등록 ( 카테고리 1번은 후기 , 2번은 같이가요 , 3번은 잡담 )
		return dao.insertBoard(vo);
	}
	
	public int updateBoard(BoardVO vo) throws SQLException { // 게시판 업데이트
		return dao.updateBoard(vo);
	}
	
	public int deleteBoard(int boardNo) throws SQLException { //게시판 삭제 처리
		return dao.deleteBoard(boardNo);
	}
	
	public List<BoardSelectVO> selectAllBoard() throws SQLException { //게시판 전체 조회
		return dao.selectAllBoard();
	}
	public List<BoardSelectVO> selectBoardBycate(int cateNo) throws SQLException { //게시판별로 조회
		return dao.selectBoardBycate(cateNo);
	}
	
	public DetailboardViewVO selectByboardNO(int boardNo) throws SQLException { //게시판 detail 조회 뷰
		return dao.selectByboardNO(boardNo);
	}
}
