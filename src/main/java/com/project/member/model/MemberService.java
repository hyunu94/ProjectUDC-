package com.project.member.model;

import java.sql.SQLException;

public class MemberService {
	private MemberDAO dao;
	
	public MemberService(){
		dao = new MemberDAO();
	}
	
	public int insertSeller(MemberVO vo) throws SQLException { //판매자 회원가입시
		return dao.insertSeller(vo);
	}
	
	public int insertMember(MemberVO vo) throws SQLException { //일반회원 회원가입시
		return dao.insertMember(vo);
	}
	
	public int insertBemember(MemberVO vo) throws SQLException { //비회원 기능이용시
		return dao.insertBemember(vo);
	}
}
