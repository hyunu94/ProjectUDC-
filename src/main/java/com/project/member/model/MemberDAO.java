package com.project.member.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.project.db.ConnectionPoolMgr2;

public class MemberDAO {
	private ConnectionPoolMgr2 pool;
	
	public MemberDAO(){
		pool = new ConnectionPoolMgr2();
	}
	
	public int insertSeller(MemberVO vo) throws SQLException { //판매자 회원가입시
		Connection con = null;
		PreparedStatement ps = null;
		int cnt = 0;
		
		try {
			con = pool.getConnection();
			
			String sql = "insert into member(memberNo,userid,pwd,name,nick,jumin,mobile,kindNo,locationNo)\r\n"
					+ "values(member_seq.nextval,?,?,?,?,?,?,1,?)";
			ps = con.prepareStatement(sql);
			ps.setString(1, vo.getUserid());
			ps.setString(2, vo.getPwd());
			ps.setString(3, vo.getName());
			ps.setString(4, vo.getNick());
			ps.setString(5, vo.getJumin());
			ps.setString(6, vo.getMobile());
			ps.setInt(7, vo.getLocationNo());
			
			cnt = ps.executeUpdate();
			
			if(cnt>0) {
				System.out.println("생성된 회원 정보 : " + vo);
			}
			return cnt;
		}finally {
			pool.dbClose(ps, con);
		}
	}
	
	public int insertMember(MemberVO vo) throws SQLException { //일반회원 회원가입시
		Connection con = null;
		PreparedStatement ps = null;
		int cnt = 0;
		
		try {
			con = pool.getConnection();
			
			String sql = "insert into member(memberNo,userid,pwd,name,nick,jumin,mobile,kindNo,locationNo)\r\n"
					+ "values(member_seq.nextval,?,?,?,?,?,\r\n"
					+ "?,2,?);";
			ps = con.prepareStatement(sql);
			ps.setString(1, vo.getUserid());
			ps.setString(2, vo.getPwd());
			ps.setString(3, vo.getName());
			ps.setString(4, vo.getNick());
			ps.setString(5, vo.getJumin());
			ps.setString(6, vo.getMobile());
			ps.setInt(7, vo.getLocationNo());
			
			cnt = ps.executeUpdate();
			
			if(cnt>0) {
				System.out.println("생성된 판매자 정보 : " + vo);
			}
			return cnt;
		}finally {
			pool.dbClose(ps, con);
		}
	}
	
	public int insertBemember(MemberVO vo) throws SQLException { //비회원 기능이용시
		Connection con = null;
		PreparedStatement ps = null;
		int cnt = 0;
		
		try {
			con = pool.getConnection();
			
			String sql = "insert into member(memberNo,name,mobile,kindNo)\r\n"
					+ "values(member_seq.nextval,?,?,3);";
			ps = con.prepareStatement(sql);
			ps.setString(1, vo.getName());
			ps.setString(2, vo.getMobile());
		
			cnt = ps.executeUpdate();
			
			if(cnt>0) {
				System.out.println("생성된 비회원 정보 : " + vo);
			}
			return cnt;
		}finally {
			pool.dbClose(ps, con);
		}
	}
	
	public int duplicateUserid(String userid) throws SQLException { //아이디 중복확인
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		try {
			con=pool.getConnection();
			
			String sql="select count(*) from member where userid=?";
			ps=con.prepareStatement(sql);
			ps.setString(1, userid);
			
			int result=0;
			rs=ps.executeQuery();
			if(rs.next()) {
				int cnt = rs.getInt(1);
				if(cnt>0) {
					result=MemberService.EXIST_ID; //이미 존재
				}else {
					result=MemberService.NON_EXIST_ID; //사용가능
				}
			}
			System.out.println("아이디 중복확인 결과 result="+result+", 매개변수 userid="+userid);
			
			return result;
		}finally {
			pool.dbClose(rs, ps, con);
		}
	}
	
}
