<!-- 
*��ü �帧:
el02.jsp�� person.java�� property set�ϰ�, �ٽ� get�ؿ´�

scope="page": 
page �������� bean ��ü ����

 -->

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    <jsp:useBean id="person" class="jsp_Ex_3.Person" scope="page" />
    	<jsp:setProperty name="person" property="name" value="ȫ�浿" />
    	<jsp:setProperty name="person" property="id" value="test" />
    	<jsp:setProperty name="person" property="pw" value="test11" />
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

<h3>�׼� �±�</h3><br>
	�̸�:    <jsp:getProperty name="person" property="name" /><br />
	���̵�:	<jsp:getProperty name="person" property="id" /><br />	
	��й�ȣ: <jsp:getProperty name="person" property="pw" />
	
	<hr />

<h3>EL</h3><br>
	�̸�:    ${person.name}<br/>
	���̵�:   ${person.id}<br/>
	��й�ȣ: ${person.pw} 
	
</body>
</html>