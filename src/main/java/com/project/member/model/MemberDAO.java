package com.project.member.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.project.db.ConnectionPoolMgr2;

public class MemberDAO {
	private ConnectionPoolMgr2 pool;
	
	public MemberDAO(){
		pool = new ConnectionPoolMgr2();
	}
	
	public int insertMember(MemberVO vo) throws SQLException { //판매자 회원가입시
		Connection con = null;
		PreparedStatement ps = null;
		int cnt = 0;
		
		try {
			con = pool.getConnection();
			
			String sql = "insert into member(memberNo,userid,pwd,name,nick,jumin,mobile,kindNo,locationNo)\r\n"
					+ "values(member_seq.nextval,?,?,?,?,?,?,?,?)";
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
}
