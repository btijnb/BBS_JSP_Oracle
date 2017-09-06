<!--
공지사항/ 공지사항 쓰기 form/ 전체 구조

	import java.util.*: Calendar 객체 불러오기 위함
	
	Calendar 객체
	변수선언 연월일
	print 연월일
	
	연월일.html 만들어 보관하기 위한 로직
		-1자리의 월, 일은 앞에 0을 붙여준다

	--------------------------------

	form
		-<input~ disabled: form 값 전송 시, 값이 전달되지 않게 막아놓음
		-이 page의 form에선, hidden으로 fname 전달.
	
-->

<%@ page language="java" 
		 contentType="text/html; charset=EUC-KR"
    	 pageEncoding="EUC-KR"
    	 import="java.util.*" %>
    
<%
	Calendar cal = Calendar.getInstance();
	int yy=cal.get(Calendar.YEAR);
	int mm=cal.get(Calendar.MONTH)+1;
	int dd=cal.get(Calendar.DAY_OF_MONTH);
	
	out.println("<font color=red><b>");
	out.println(yy+"년"+mm+"월"+dd+"일");
	out.println("</b></font>");
	
	
	String fname=yy+"";
	
	if(mm<10)
		fname+=("0"+mm);
	else
		fname+=mm;
	if(dd<10)
		fname+=("0"+dd);
	else
		fname+=dd;
	fname+=".html";
%>    

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
	<h2>오늘의 공지사항</h2>
	
	<form action="notice_save.jsp" method="post">
		<table border=1 width=500>

			<tr>
				<th>제목</th>
				<td><input type="text" name="title"/></td>
			</tr>

			<tr>
				<th>공지내용</th>
				<td><textarea name="info" rows="5" cols="50"></textarea></td>
			</tr>			

			<tr>
				<th>파일명</th>
				
				<td>
					<input type="text" name="filename" value="<%=fname%>" disabled>
					<input type="hidden" name="filename" value="<%=fname%>">
				</td>
			</tr>

			<tr>
				<td colspan=2 align="center">
					<input type="submit" value="작성" />
					<input type="reset" value="취소" />
			</tr>			
		</table>
	</form>
</body>
</html>