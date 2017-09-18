/*

ex) �л������� DB���� ��ȸ(select)/ ����(3-2/5)

	Service interface�� implement
	������: �� ���� -?
	DAO�� select �޼ҵ� ȣ���Ͽ�, StudentDTO Ÿ���� ArrayList�� return.
	
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
