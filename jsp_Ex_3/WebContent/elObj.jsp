<!-- 

*Expression Language/ ���� ��ü
	
	����"java class ���� ��ü��, �ƿ� ó������ ����Ǿ� �ֱ⿡ ������ ���� ���� ���� ��ٷ� �� �� �ִ� ��."


	pageScope: page ��ü�� �����ϴ� ��ü
	requestScope: request ��ü�� �����ϴ� ��ü
	sessionScope: session ��ü�� �����ϴ� ��ü
	applicationScope: application ��ü�� �����ϴ� ��ü
	   
	param: ��û �Ķ���͸� �����ϴ� ��ü
	paramValues: ��û �Ķ����(�迭)�� �����ϴ� ��ü
	initParam: �ʱ�ȭ �Ķ���͸� �����ϴ� ��ü
	cookie: cookie ��ü�� �����ϴ� ��ü 
   
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
		���̵�:   <input type="text" name="id" /><br/>
		��й�ȣ:  <input type="password" name="pw" /><br/>
		<input type="submit" value="�α���" />
	</form>

	<%
		application.setAttribute("appName", "appValue");
		session.setAttribute("sessionName", "sessionValue");
		pageContext.setAttribute("pageName", "pageValue");
		request.setAttribute("reqName", "reqValue");
	%>
</body>
</html>