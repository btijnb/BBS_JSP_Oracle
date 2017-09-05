<!-- 

*Expression Language/ 내장 객체
	
	추측"java class 같은 객체가, 아예 처음부터 내장되어 있기에 별도의 변수 선언 없이 곧바로 쓸 수 있는 것."


	pageScope: page 객체를 참조하는 객체
	requestScope: request 객체를 참조하는 객체
	sessionScope: session 객체를 참조하는 객체
	applicationScope: application 객체를 참조하는 객체
	   
	param: 요청 파라미터를 참조하는 객체
	paramValues: 요청 파라미터(배열)를 참조하는 객체
	initParam: 초기화 파라미터를 참조하는 객체
	cookie: cookie 객체를 참조하는 객체 
   
 -->

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
 
	<form action="post_elObj.jsp" method="get">
		아이디:   <input type="text" name="id" /><br/>
		비밀번호:  <input type="password" name="pw" /><br/>
		<input type="submit" value="로그인" />
	</form>

	<%
		application.setAttribute("appName", "appValue");
		session.setAttribute("sessionName", "sessionValue");
		pageContext.setAttribute("pageName", "pageValue");
		request.setAttribute("reqName", "reqValue");
	%>
</body>
</html>