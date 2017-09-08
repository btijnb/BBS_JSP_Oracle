<!--

*오라클 DB 연동/ 전체 구조

	SUM
	연결 - SQL적용&추출 - 예외검사 - 닫기
	
	1) JDBC 드라이버 로딩
	
	2) DB 연결
	
	3) SQL문 실행
	
	4) resultSet 받아옴
	
	5) resultSet 내용물 끄집어내기: while문으로 돌려/ out.println으로 출력.
	
	6) 위의 과정 예외 여부 검사(try~ catch~)
	
	7) 예외가 발생하든 안 하든, 열어둔 객체는 모두 닫는다
		-finally: try 구문에서 예외가 발생하는 것과 상관없이 언제나 실행되는 로직.
	
-->

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.Connection" %>  
<%@ page import="java.sql.Statement" %>  
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.DriverManager" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

<%!
	Connection connection;
	Statement statement;
	ResultSet resultSet;
	
	String driver="oracle.jdbc.driver.OracleDriver";
	
	String url="jdbc:oracle:thin:@localhost:1522:xe";
	String uid="scott";
	String upw="1234";
	String query="select * from student";
%>


<%
	try{
		Class.forName(driver);
		connection=DriverManager.getConnection(url, uid, upw);
		statement=connection.createStatement();
		resultSet=statement.executeQuery(query);
		
		while(resultSet.next()){
			String no   = resultSet.getString("no");
			String pw   = resultSet.getString("pw");
			String name = resultSet.getString("name");
			String hp   = resultSet.getString("hp");
			
			out.println("학번: "+no+", 비밀번호: "+pw+",이름: "+name+", 전화번호: "+hp+"<br/>");
		}
	}catch(Exception e){}

	finally{
			try{
				if(resultSet  != null) resultSet.close();
				if(statement  != null) statement.close();
				if(connection != null) connection.close();
			}catch(Exception e){}
	}
%>
</body>
</html>