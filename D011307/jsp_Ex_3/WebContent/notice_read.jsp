<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.util.*, java.io.*"%>
    
<%
/*
	1. ���������� �б� ���ؼ� ���� ��¥�� ���Ѵ�.
	2. ��¥.html --> ���ϸ��� �����.
	3. ���ϸ�� ������ �д� ��彺Ʈ���� ����
	4. ���͸�
	5. ��Ʈ���� ���ؼ� �о����
	6. �о�� ������ �������� ����ϱ�
	7. ��Ʈ�� close ó��	
	
*/
Calendar cal=Calendar.getInstance();
	int yy = cal.get(Calendar.YEAR);
	int mm = cal.get(Calendar.MONTH)+1;
	int dd = cal.get(Calendar.DAY_OF_MONTH);
	
	out.println(yy+"��"+mm+"��"+dd+"��");
	
	String fname =yy+"";
	
	if(mm<10) fname+=("0"+mm);
	else fname+=mm;
	
	if(dd<10) fname+=("0"+dd);
	else fname+=dd;
	
	fname+=".html";
	out.println(fname);
	
	String rFile = config.getServletContext().getRealPath("/notice");
	rFile+="/"+fname;
	
	out.println("�о�� ���� ���:"+rFile);	
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