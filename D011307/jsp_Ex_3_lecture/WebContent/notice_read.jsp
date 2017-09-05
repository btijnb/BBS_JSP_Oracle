<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.util.*, java.io.*"%>
    
<%
/*
	1. 공지파일을 읽기 위해서 오늘 날짜를 구한다.
	2. 날짜.html --> 파일명을 만든다.
	3. 파일명과 파일을 읽는 노드스트림을 연결
	4. 필터링
	5. 스트림을 통해서 읽어오기
	6. 읽어온 내용을 브라우저에 출력하기
	7. 스트림 close 처리	
	
*/
Calendar cal=Calendar.getInstance();
	int yy = cal.get(Calendar.YEAR);
	int mm = cal.get(Calendar.MONTH)+1;
	int dd = cal.get(Calendar.DAY_OF_MONTH);
	
	out.println(yy+"년"+mm+"월"+dd+"일");
	
	String fname =yy+"";
	
	if(mm<10) fname+=("0"+mm);
	else fname+=mm;
	
	if(dd<10) fname+=("0"+dd);
	else fname+=dd;
	
	fname+=".html";
	out.println(fname);
	
	String rFile = config.getServletContext().getRealPath("/notice");
	rFile+="/"+fname;
	
	out.println("읽어올 파일 경로:"+rFile);	
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