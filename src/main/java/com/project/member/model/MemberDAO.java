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
	
	public int insertMember(MemberVO vo) throws SQLException { //회원가입시
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
	
	public int duplicateNick(String nick) throws SQLException { //닉네임 중복확인
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		try {
			con=pool.getConnection();
			
			String sql="select count(*) from member\r\n"
					+ "where nick=?";
			ps=con.prepareStatement(sql);
			ps.setString(1, nick);
			
			int result=0;
			rs=ps.executeQuery();
			if(rs.next()) {
				int cnt = rs.getInt(1);
				
				if(cnt>0) {
					result=MemberService.EXIST_ID; //닉네임 이미존재
				}else {
					result=MemberService.NON_EXIST_ID; //사용가능
				}
			}
			System.out.println("닉네임 중복확인 결과 result="+result+", 매개변수 nick="+nick);
			
			return result;
		}finally {
			pool.dbClose(rs, ps, con);
		}
	}
	
	public int loginCheck(String userid, String pwd) throws SQLException { //로그인 비밀번호 체크
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		
		try {
			//1,2
			con=pool.getConnection();
			//3
			String sql="select pwd from member where userid=?"
					+ " and delcheck = 'N'";
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
	
	public MemberVO selectByUserid(String userid) throws SQLException { //아이디로 사용자 정보찾기
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		
		MemberVO memberVo=null;
		try {
			con=pool.getConnection();
			
			String sql="select * from member where userid=?";
			ps=con.prepareStatement(sql);
			ps.setString(1, userid);
			
			rs=ps.executeQuery();
			if(rs.next()) {
				
				int memberNo=rs.getInt("memberNo");
				String userid2=rs.getString("userid");
				String pwd=rs.getString("pwd");
				String name=rs.getString("name");
				String nick=rs.getString("nick");
				String Jumin=rs.getString("Jumin");
				String mobile=rs.getString("mobile");
				String delcheck=rs.getString("delcheck");
				int kindNo=rs.getInt("kindNo");
				int locationNo=rs.getInt("locationNo");
				
				memberVo = new MemberVO(memberNo, userid2, pwd, name, nick, Jumin, mobile, delcheck, kindNo, locationNo);
				
			}
			System.out.println("회원조회 결과 memberVo="+memberVo+", 매개변수 userid="+userid);
			return memberVo;
		}finally {
			pool.dbClose(rs, ps, con);
		}
		
	}
	
	public boolean selectKindNo(int memberNo) throws SQLException { //관리자 여부 확인
	      Connection con=null;
	      PreparedStatement ps=null;
	      ResultSet rs = null;
	      int kindNo = 0;
	      boolean bool;
	      
	      try {
	         con=pool.getConnection();
	         
	         String sql="select kindNo from member where memberNo = ?";
	         ps=con.prepareStatement(sql);
	         ps.setInt(1,memberNo);
	         rs = ps.executeQuery();
	         
	         if(rs.next()){
	            kindNo = rs.getInt(1);
	         }

	         if(kindNo == 1){
	            bool = true;
	         }else{
	            bool = false;
	         }
	         
	         System.out.println("관리자 여부 bool = " + bool);
	         return bool;
	      }finally {
	         pool.dbClose(rs,ps, con);
	      }
	   }
	
	public int updateNick(int MemberNo , String nick) throws SQLException { //닉네임 변경
		Connection con = null;
		PreparedStatement ps= null;
		int cnt = 0 ;
		
		try {
			con = pool.getConnection();
			
			String sql = "update member\r\n"
					+ "set nick = ?\r\n"
					+ "where memberno = ?";
			ps = con.prepareStatement(sql);
			ps.setString(1, nick);
			ps.setInt(2, MemberNo);
			
			cnt = ps.executeUpdate();
			
			if(cnt>0) {
				System.out.println("닉네임 변경 번호 : " + MemberNo + ",변경 후 nick : " + nick);
			}
			
			return cnt;
		}finally {
			pool.dbClose(ps, con);
		}
	}
	
	public int updatePwd(int MemberNo , String pwd) throws SQLException { //비밀번호 변경
		Connection con = null;
		PreparedStatement ps = null;
		int cnt = 0;
		
		try {
			con = pool.getConnection();
			
			String sql = "update member\r\n"
					+ "set pwd = ?\r\n"
					+ "where memberno = ?";
			ps = con.prepareStatement(sql);
			ps.setString(1, pwd);
			ps.setInt(2, MemberNo);
			
			cnt = ps.executeUpdate();
			
			if(cnt>0) {
				System.out.println("비밀번호 변경 번호 : " + MemberNo + ",변경 후 pwd : " + pwd);
			}
			
			return cnt;
		}finally {
			pool.dbClose(ps, con);
		}
	}
	
	public int updateDel(int MemberNo) throws SQLException { //회원 탈퇴
		Connection con = null;
		PreparedStatement ps = null;
		int cnt = 0;
		
		try {
			con = pool.getConnection();
			
			String sql = "update member\r\n"
					+ "set delcheck = 'Y'\r\n"
					+ "where memberNo = ?";
			ps = con.prepareStatement(sql);
			ps.setInt(1, MemberNo);
			
			cnt = ps.executeUpdate();
			
			if(cnt>0) {
				System.out.println("회원탈퇴한 번호 : " + MemberNo);
			}
			
			return cnt;
		}finally {
			pool.dbClose(ps, con);
		}
	}
	
	public String findPwd(int MemberNo ,String userid) throws SQLException {
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		String pwd = "";
		
		try {
			con=pool.getConnection();
			
			String sql="select Pwd from member\n"
					+ "where MemberNo=? and userid like '%' || ? || '%'";
			ps=con.prepareStatement(sql);
			ps.setInt(1, MemberNo);
			ps.setString(2, userid);
			
			rs=ps.executeQuery();
			if(rs.next()) {
				pwd=rs.getString(1);
				System.out.println("비밀번호 조회 결과 pwd="+pwd+", 매개변수 MemberNo="+MemberNo+" userid="+userid);
			}
			return pwd;
		}finally {
			pool.dbClose(rs, ps, con);
		}
	}
	
	public String findAdd(int locationNo) throws SQLException {
		Connection con = null;
		PreparedStatement ps =null;
		ResultSet rs = null;
		String address = "";
		
		try {
			con = pool.getConnection();
			
			String sql = "select address from location\n"
					+ "where locationNo\n"
					+ "= (select locationNo from member where memberNo = ?)";
			ps = con.prepareStatement(sql);
			ps.setInt(1, locationNo);
			
			rs = ps.executeQuery();
			if(rs.next()) {
				address = rs.getString(1);
				System.out.println("위치고유번호로 조회 결과 address="+address+", 매개변수 locationNo="+locationNo);
			}
			return address;
		} finally {
			pool.dbClose(rs, ps, con);
		}
	}
	
	public String findKindName(String userid) throws SQLException {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String kindName = "";
		
		try {
			con = pool.getConnection();
			
			String sql = "select kindname from kind\n"
					+ "where kindno= (select kindno from member where userid=?)";
			ps = con.prepareStatement(sql);
			ps.setString(1, userid);
			
			rs = ps.executeQuery();
			if(rs.next()) {
				kindName = rs.getString(1);
				System.out.println("아이디-구분번호로 조회 결과 kindName="+kindName+", 매개변수 userid="+userid );
			}
			
			return kindName;
		} finally {
			pool.dbClose(rs, ps, con);
		}
	}
	
	
}
