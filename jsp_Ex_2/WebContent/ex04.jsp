<!--

*����Ŭ DB ����/ ��ü ����

	SUM
	���� - SQL����&���� - ���ܰ˻� - �ݱ�
	
	1) JDBC ����̹� �ε�
	
	2) DB ����
	
	3) SQL�� ����
	
	4) resultSet �޾ƿ�
	
	5) resultSet ���빰 �������: while������ ����/ out.println���� ���.
	
	6) ���� ���� ���� ���� �˻�(try~ catch~)
	
	7) ���ܰ� �߻��ϵ� �� �ϵ�, ����� ��ü�� ��� �ݴ´�
		-finally: try �������� ���ܰ� �߻��ϴ� �Ͱ� ������� ������ ����Ǵ� ����.
	
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
			
			out.println("�й�: "+no+", ��й�ȣ: "+pw+",�̸�: "+name+", ��ȭ��ȣ: "+hp+"<br/>");
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