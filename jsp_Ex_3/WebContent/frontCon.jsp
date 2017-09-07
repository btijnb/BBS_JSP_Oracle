<!--
FrontController 패턴/ 전체 구조

	frontCon.jsp - FrontController.java(서블릿)
		
		frontCon.jsp: 링크: 
		각각 다르게 생겼어도, 모두 http://localhost:8080/jsp_Ex_3/select.do 나타냄.
		즉 확장자 패턴 do = 프로젝트 내의 do
		
		frontCon.jsp에서 링크(~.do)를 클릭하면,
		모두 doGet메소드(이 안에서 다시 actionDo도) 실행: uri, conPath, command 출력
			*uri = conPath+command ex)/jsp_Ex_3/update.do
			*command = uri.substring(잘라낼것, 잘라낼것의 길이): command가 뭐냐에 따라서, 다른 메시지 출력
			
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

	<center>
		<a href="insert.do">삽입</a><hr width=500/>
		<a href="http://localhost:8080<%=request.getContextPath()%>/update.do">업데이트</a><hr width=500/>
		<a href="http://localhost:8080/jsp_Ex_3/select.do">조회</a><hr width=500/>
		<a href="<%=request.getContextPath()%>/delete.do">삭제</a>
	</center>

</body>
</html>