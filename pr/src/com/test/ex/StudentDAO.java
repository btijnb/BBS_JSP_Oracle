/*

ex) �л������� DB���� ��ȸ(select)/ ����(4/5)

	������: ���� �� �ٷ� Ŀ�ؼ� ó�� �ǰ� ����
	select �޼ҵ�: DB���� ������ ���� dto ��ü�� set�Ͽ�, arraylist ��ü�� add


*�ָ��� ��
	public StudentDTO[]~: ���� Ÿ���� StudentDTO Ÿ���� �迭
	public ArrayList<StudentDTO>~: ���� Ÿ���� StudentDTO Ÿ���� ArrayList
	
*/

package com.test.ex;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

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
			System.out.println("�����ͺ��̽� ����!!");
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
	
	
	public ArrayList<StudentDTO> select() throws SQLException{
		ArrayList<StudentDTO> sdtos = new ArrayList<StudentDTO>();
		try{
				String sql="select * from student";
				ps=dbconn.prepareStatement(sql);
				rs=ps.executeQuery();
				
				while(rs.next()){
					StudentDTO sdto=new StudentDTO();
					sdto.setHakbun(rs.getString("no"));
					sdto.setPw(rs.getString("pw"));
					sdto.setName(rs.getString("name"));
					sdto.setHp(rs.getString("hp"));
					sdtos.add(sdto);					
				}
		}finally{
			if(rs!=null) rs.close();
			if(ps!=null) ps.close();
			if(dbconn!=null) dbconn.close();
			
		}
		return sdtos;
	}

/* �ۼ� ��	
	public StudentDTO[] findSt(String name) throws SQLException{
		try{
			String sql="select * from student where name=?";
			ps=dbconn.prepareStatement(sql);
			ps.setString(1, name);
			rs=ps.executeQuery();
			
			StudentDTO stArray[]=createArray(rs);
			return stArray;
		}finally{
			if(rs!=null) rs.close();
			if(ps!=null) ps.close();
			if(dbconn!=null) dbconn.close();
		}
	}
*/	

}
