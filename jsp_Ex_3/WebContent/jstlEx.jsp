<!--

JSTL:

	1. Jsp Standard Tag Library
	
	2. 전체 흐름: Expression Language, JSTL, Scriptlet 섞어 사용
		태그 라이브러리 불러오고,
		변수 선언하여,
		결과를 출력
		
	3. JSTL 공통 구조: *에러 때문에, c와 : 사이 띄움
		<c : 기능 var= value= />
		<c : catch~ />: 예외 처리 태그
	
궁금한 점:
	1. 왜 uri -?
	
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
	
		${num1}와 ${num2}의 곱은? ${res}<br/>
		<c:out value="${res}" /><hr/>
	
	
	<h3>2</h3>
	
		<c:catch var="exception">
			<%= 10/0 %>
		</c:catch><br/>
		
		<c:out value="${exception}"/><hr/>
		
		
	<h3>3</h3>
	
		<c:if test="${10+10==100}">
			참
		</c:if>
		
		<c:if test="${10+10!=100}">
			거짓
		</c:if><hr/>


	<h3>4</h3>
		
		<c:forEach var="aa" begin="0" end="10" step="2">
			<font size="${aa}">안녕하세요!</font>
		</c:forEach><hr/>
	
</body>
</html>