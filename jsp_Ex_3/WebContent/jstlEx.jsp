<!--

JSTL:

	1. Jsp Standard Tag Library
	
	2. ��ü �帧: Expression Language, JSTL, Scriptlet ���� ���
		�±� ���̺귯�� �ҷ�����,
		���� �����Ͽ�,
		����� ���
		
	3. JSTL ���� ����: *���� ������, c�� : ���� ���
		<c : ��� var= value= />
		<c : catch~ />: ���� ó�� �±�
	
�ñ��� ��:
	1. �� uri -?
	
-->

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   

<c:set var="num1" value="10" />
<c:set var="num2" value="5" />
<c:set var="res" value="${num1*num2}" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h3>1</h3>
	
		${num1}�� ${num2}�� ����? ${res}<br/>
		<c:out value="${res}" /><hr/>
	
	
	<h3>2</h3>
	
		<c:catch var="exception">
			<%= 10/0 %>
		</c:catch><br/>
		
		<c:out value="${exception}"/><hr/>
		
		
	<h3>3</h3>
	
		<c:if test="${10+10==100}">
			��
		</c:if>
		
		<c:if test="${10+10!=100}">
			����
		</c:if><hr/>


	<h3>4</h3>
		
		<c:forEach var="aa" begin="0" end="10" step="2">
			<font size="${aa}">�ȳ��ϼ���!</font>
		</c:forEach><hr/>
	
</body>
</html>