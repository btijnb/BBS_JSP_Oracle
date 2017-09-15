package com.test.ex;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class StudentDAO {
	Connection dbconn;
	PreparedStatement ps;
	ResultSet rs;
	String url ="jdbc:oracle:thin:@localhost:1522:XE";
	String uid ="scott", pwd = "1234";
	
	public StudentDAO(){
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			dbconn = DriverManager.getConnection(url,uid,pwd);
			System.out.println("데이터베이스 연결!!");
		} catch (Exception e) {			
			e.printStackTrace();
		}		
	}
	
	public int insertStudent(StudentDTO sdto) throws SQLException{
		String hakbun = sdto.getHakbun();
		String pw     = sdto.getPw();
		String name   = sdto.getName();
		String hp     = sdto.getHp();
		int n         = this.insertStudent(hakbun, pw, name, hp);
		return n;
	}

	
	public int insertStudent(String hakbun, String pw, String name, String hp) throws SQLException{
		
		try{
			String sql="insert into student values(?, ?, ?, ?)";
			ps=dbconn.prepareStatement(sql);
			ps.setString(1, hakbun);
			ps.setString(2, pw);
			ps.setString(3, name);
			ps.setString(4, hp);
			
			int n = ps.executeUpdate();
			return n;

		}finally{
			if(ps!=null) ps.close();
			if(dbconn!=null) dbconn.close();
		}
		
	}
	
}
