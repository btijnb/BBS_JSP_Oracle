/*

ex) �л������� DB���� ��ȸ(select)/ ����(3-1/5)

studentDTO Ÿ������ DTO ��ü ����. �� ���� ����(request, response) �̿�

*/

package com.test.ex;

import java.sql.SQLException;
import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Service {
	public ArrayList <StudentDTO> execute(HttpServletRequest request, HttpServletResponse response)throws SQLException;
}
