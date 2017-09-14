package com.test.ex;

import java.sql.DriverManager;

public class StudentDAO {
	Connection dbconn;
	PreparedStatement ps;
	ResultSet rs;
	String url="jdbc:oracle:thin:@localhost:1522:XE";
	String uid="scott", pwd="1234";
	
	public StudentDAO(){
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			dbconn=DriverManager.getConnection(url, uid, upw);
			System.out.println("DB Connected");			
		}catch (Exception e){
			e.printStackTrace();
		}
	}
	
	public int insertStudent(StudentDTO sdto) throws SQLException{
			String StudentNumber=sdto.getStudentNumber();
			String Password=sdto.
	}
}
