package com.project.member.model;

import java.sql.SQLException;

import com.project.member.model.MemberVO;

public class MemberService {
	//아이디 중복확인에서 사용할 상수
	public static final int EXIST_ID=1; //이미 존재하는 아이디,닉네임
	public static final int NON_EXIST_ID=2; //존재하지 않는 아이디,닉네임 - 사용가능
	
	//로그인 처리시 사용할 상수
		public static final int LOGIN_OK=1; //로그인 성공
		public static final int DISAGREE_PWD=2; //비밀번호 불일치
		public static final int NONE_USERID=3; //해당 아이디 존재하지 않음

	private MemberDAO dao;
	
	public MemberService(){
		dao = new MemberDAO();
	}
	
	public int insertMember(MemberVO vo) throws SQLException { // 회원가입시
		return dao.insertMember(vo);
	}
	
	public int insertBemember(MemberVO vo) throws SQLException { //비회원 기능이용시
		return dao.insertBemember(vo);
	}
	
	public int duplicateUserid(String userid) throws SQLException { //아이디 중복확인
		return dao.duplicateUserid(userid);
	}
	public int loginCheck(String userid, String pwd) throws SQLException {
		return dao.loginCheck(userid, pwd);
	}
	
	public MemberVO selectByUserid(String userid) throws SQLException {
		return dao.selectByUserid(userid);
	}
	
	public int updateMember(MemberVO vo) throws SQLException {
		return dao.updateMember(vo);
	}
	
	public int duplicateNick(String nick) throws SQLException { //닉네임 중복확인
		return dao.duplicateNick(nick);
	}
}
