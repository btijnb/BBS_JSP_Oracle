/*

ex) 학생정보를 DB에서 조회(select)/ 구조(3-1/5)

studentDTO 타입으로 DTO 객체 실행. 두 개의 인자(request, response) 이용

*/

package com.test.ex;

import java.sql.SQLException;
import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Service {
	public ArrayList <StudentDTO> execute(HttpServletRequest request, HttpServletResponse response)throws SQLException;
}
