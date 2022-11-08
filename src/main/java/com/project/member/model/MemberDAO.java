package com.project.member.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;

import com.project.member.model.MemberService;
import com.project.member.model.MemberVO;
import com.project.db.ConnectionPoolMgr2;

public class MemberDAO {
	private ConnectionPoolMgr2 pool;
	
	public MemberDAO(){
		pool = new ConnectionPoolMgr2();
	}
	
	public int insertMember(MemberVO vo) throws SQLException { //일반회원 회원가입시
		Connection con = null;
		PreparedStatement ps = null;
		int cnt = 0;
		
		try {
			con = pool.getConnection();
			
			String sql = "insert into member(memberNo,userid,pwd,name,nick,jumin,mobile,kindNo,locationNo)\r\n"
					+ "values(member_seq.nextval,?,?,?,?,?,\r\n"
					+ "?,?,?)";
			ps = con.prepareStatement(sql);
			ps.setString(1, vo.getUserid());
			ps.setString(2, vo.getPwd());
			ps.setString(3, vo.getName());
			ps.setString(4, vo.getNick());
			ps.setString(5, vo.getJumin());
			ps.setString(6, vo.getMobile());
			ps.setInt(7, vo.getKindNo());
			ps.setInt(8, vo.getLocationNo());
			
			cnt = ps.executeUpdate();
			
			if(cnt>0) {
				System.out.println("생성된 회원 정보 : " + vo);
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
					+ "values(member_seq.nextval,?,?,3)";
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
	
	public int loginCheck(String userid, String pwd) throws SQLException {
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		
		try {
			//1,2
			con=pool.getConnection();
			//3
			String sql="select pwd from member where userid=?"
					+ " and outdate is null";
			ps=con.prepareStatement(sql);
			ps.setString(1, userid);
			
			//4
			int result=0;
			rs=ps.executeQuery();
			if(rs.next()) {
				String dbPwd=rs.getString(1);
				
				if(dbPwd.equals(pwd)) {
					result=MemberService.LOGIN_OK;
				}else {
					result=MemberService.DISAGREE_PWD;
				}
				
			}else {
				result=MemberService.NONE_USERID;
			}
			
			System.out.println("로그인 처리 결과 result="+result
					+", 매개변수 userid="+userid+", pwd="+pwd);
			
			return result;
		}finally {
			pool.dbClose(rs, ps, con);
		}
	}
	
	public MemberVO selectByUserid(String userid) throws SQLException {
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		
		MemberVO memberVo= new MemberVO();
		try {
			con=pool.getConnection();
			
			String sql="select * from member\r\n"
					+ "where userid=?";
			ps=con.prepareStatement(sql);
			ps.setString(1, userid);
			
			rs=ps.executeQuery();
			if(rs.next()) {
				
				int memberNo=rs.getInt("memberNo");
				String pwd=rs.getString("pwd");
				String name=rs.getString("name");
				String nick=rs.getString("nick");
				String Jumin=rs.getString("Jumin");
				String mobile=rs.getString("mobile");
				String outdate=rs.getString("outdate");
				int kindNo=rs.getInt("kindNo");
				int location=rs.getInt("location");
				
				memberVo.setMemberNo(memberNo);
				memberVo.setPwd(pwd);
				memberVo.setName(name);
				memberVo.setNick(nick);
				memberVo.setJumin(Jumin);
				memberVo.setMobile(mobile);
				memberVo.setOutdate(outdate);
				memberVo.setKindNo(kindNo);
				memberVo.setLocationNo(location);
				
			}
			System.out.println("회원조회 결과 memberVo="+memberVo+", 매개변수 userid="+userid);
			return memberVo;
		}finally {
			pool.dbClose(rs, ps, con);
		}
		
	}
	
	public int updateMember(MemberVO vo) throws SQLException {
		Connection con=null;
		PreparedStatement ps=null;
		
		try {
			con=pool.getConnection();
			
			String sql="update member\r\n"
					+ "set name=?, nick=?, \r\n"
					+ " mobile=?, locationNo=?"
					+ "where userid=?";
			ps=con.prepareStatement(sql);
			ps.setString(1, vo.getName());
			ps.setString(2, vo.getNick());
			ps.setString(3, vo.getMobile());
			ps.setInt(4, vo.getLocationNo());
			ps.setString(5, vo.getUserid());
			
			int cnt = ps.executeUpdate();
			
			System.out.println("업뎃 결과 cnt="+cnt+", 매개변수 vo="+vo);
			return cnt;
		}finally {
			pool.dbClose(ps, con);
		}
	}
	
}
