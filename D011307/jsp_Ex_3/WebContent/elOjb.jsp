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
		���̵�:<input type="text" name="id"/><br/>
		��й�ȣ:<input type="password" name="pw" /><br/>
		<input type="submit" value="�α���"/>	
	</form>
	
	<%
		application.setAttribute("appName", "appValue");
		session.setAttribute("sessionName", "sessionValue");
		pageContext.setAttribute("pageName", "pageValue");
		request.setAttribute("reqName", "reqValue");
	%>
</body>
</html>