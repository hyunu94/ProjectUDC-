package com.project.location.model;

import java.sql.SQLException;

public class LocationService {
	private LocationDAO dao;
	
	public LocationService(){
		dao = new LocationDAO();
	}
	
//	public int selectByaddress(String address, String addressDetail) throws SQLException { // 주소명과 상세주소로 No 찾기
//		return dao.selectByaddress(address, addressDetail);
//	}
	
	public String updateXY(int locationNo , double x , double y) throws SQLException { //x,y 얻었을 경우 파라미터 No로 업데이트하기
		return dao.updateXY(locationNo, x, y);
	}
	
	public int insertLocation(LocationVO vo) throws SQLException { //주소 등록
		return dao.insertLocation(vo);
	}
	
	public int selectByAddress(String zipcode, String address) throws SQLException {
		return dao.selectByAddress(zipcode, address);
	}
}
