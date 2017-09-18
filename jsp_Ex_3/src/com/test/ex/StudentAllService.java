/*

ex) 학생정보를 DB에서 조회(select)/ 구조(3-2/5)

	Service interface를 implement
	생성자: 왜 만듦 -?
	DAO의 select 메소드 호출하여, StudentDTO 타입의 ArrayList로 return.
	
*/

package com.test.ex;

import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class StudentAllService implements Service{

	public StudentAllService(){
		
	}
	
	public ArrayList<StudentDTO> execute(HttpServletRequest request,
			HttpServletResponse response) throws SQLException{
		StudentDAO sdao = new StudentDAO();
		return sdao.select();
	}

}
