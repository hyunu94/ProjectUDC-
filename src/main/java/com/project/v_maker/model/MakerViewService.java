package com.project.v_maker.model;

import java.sql.SQLException;
import java.util.List;

public class MakerViewService {
	private MakerViewDAO makerDao;
	
	public MakerViewService() {
		makerDao=new MakerViewDAO();
	}
	
	public List<MakerViewVO> selectAll() throws SQLException{
		return makerDao.selectAll();
	}
}
