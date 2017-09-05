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
	<a href="insert.do">삽입</a>
	<hr width=500 />
	<a href="http://localhost:8080<%=request.getContextPath()%>/update.do">업데이트</a>
	<hr width=500 />
	<a href="http://localhost:8080/jsp_Ex_3/select.do">조회</a>
	<hr width=500/>
	<a href="<%=request.getContextPath()%>/delete.do">삭제</a>
</center>
</body>
</html>