package com.project.board.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.spi.DirStateFactory.Result;

import com.project.db.ConnectionPoolMgr2;

public class BoardDAO {
	private ConnectionPoolMgr2 pool;
	
	public BoardDAO() {
		pool = new ConnectionPoolMgr2();
	}
	
	
}
