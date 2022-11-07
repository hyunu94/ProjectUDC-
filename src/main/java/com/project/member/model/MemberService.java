package com.project.member.model;

import java.sql.SQLException;

public class MemberService {
	//아이디 중복확인에서 사용할 상수
	public static final int EXIST_ID=1; //이미 존재는 아이디
	public static final int NON_EXIST_ID=2; //존재하지 않는 아이디 - 사용가능
	
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
	
	public int duplicateUserid(String userid) throws SQLException { //아이디 중복확인
		return dao.duplicateUserid(userid);
	}
}
