/*
ex) �л������� DB�� insert (4/4)
*���� ���ؿ�: �ڵ� ���� ���� ���ɼ� ��

	DB ����
	
	dto��ü���� �� ������
	
	ps��ü�� ������ �� set: db�� ����
		-insertStudent method�� overloading �̷����� �ָ�
	
*/

package com.test.ex;
import java.sql.*;

public class StudentDAO {
	Connection dbconn;
	PreparedStatement ps;
	ResultSet rs;
	String url="jdbc:oracle:thin:@localhost:1522:XE";
	String uid="scott", pwd="1234";
	
	public StudentDAO(){
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			dbconn = DriverManager.getConnection(url, uid, pwd);
			System.out.println("DB Connected");			
		}catch (Exception e){
			e.printStackTrace();
		}
	}
	
	public int insertStudent(StudentDTO sdto) throws SQLException{
		String StudentNumber=sdto.getStudentNumber();
		String Password=sdto.getPassword();
		String Name=sdto.getName();
		String Phone=sdto.getPhone();
		int n=this.insertStudent(StudentNumber, Password, Name, Phone);
		return n;
	}

	public int insertStudent(String StudentNumber, String Password,
			String Name, String Phone) throws SQLException{

		try{
			String sql="insert into student values(?,?,?,?)";
			
			ps=dbconn.prepareStatement(sql);
			ps.setString(1, StudentNumber);
			ps.setString(2, Password);
			ps.setString(3, Name);
			ps.setString(4, Phone);
			
			int n = ps.executeUpdate();
			return n;
		}finally{
			if(ps!=null) ps.close();
			if(dbconn!=null) dbconn.close();
		}
	}
}
