<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- save ó������ -->
<%
/*
1. ����ڰ� �Է��� ������, ����, ���ϸ��� ������ ����
2. ���ϸ�� FileWriter�� ��Ʈ�� ����
3. ��Ʈ���� ���ؼ� ������� ������ ���Ͽ� ����.
4. ��Ʈ�� �ݱ�
5. ���Ͽ� ���Ⱑ �Ϸ� �Ǿ����� �޽��� ����
*/
request.setCharacterEncoding("euc-kr");
String title = request.getParameter("title");
String content = request.getParameter("info");
String fileName = request.getParameter("filename");

if(fileName == null ||fileName.trim().equals("")){
	response.sendRedirect("notice_write.jsp");
	return;
}

if(title==null || content==null || title.trim().equals("")||content.trim().equals("")){
	out.println("���� ����� ������ �Է��ϼ���!!!");
	out.println("<a href=notice_write.jsp>���ư���</a>");
	return;
}

%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>