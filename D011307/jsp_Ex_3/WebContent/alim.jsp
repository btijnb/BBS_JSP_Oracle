<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.util.*"%>
    
<% 
	Calendar cal=Calendar.getInstance();
	int yy=cal.get(Calendar.YEAR);
	int mm=cal.get(Calendar.MONTH)+1;
	int dd=cal.get(Calendar.DAY_OF_MONTH);
	out.println("<font color=blue><b>");
	out.println(yy+"년 "+mm+"월 "+dd+"일");
	out.println("</b></font>");
	String filename=yy+"";
	if(mm<10)
		filename+=("0"+mm);
	else
		filename+=mm;
	
	if(dd<10)
		filename+=("0"+dd);
	else
		filename+=dd;
	
	filename+=".html";
	//out.println(filename);
%>

<h3>오늘 공지할 사항</h3>
<form action="alim_save.jsp" method="POST">
<table border=1 width=500>
	<tr>
		<th>제목</th>
		<td align="left">
		<input type=text name="title">
		</td>
	</tr>
	<tr>
		<th>공지내용</th>
		<td align="left">
			<textarea name="info" rows="5" cols="50"></textarea>
		</td>
	</tr>
	<tr>
		<th>파일명</th>
		<td align="left">
		<input type="text" name="filename"
		 value="<%=filename%>" disabled>
		<input type="hidden" name="filename"
		 value="<%=filename%>"> 
		</td>
	</tr>
	<tr>
		<td colspan=2 align=center>
		<input type=submit value="쓰기"> 
		<input type=reset value="취소">
		</td>
	</tr>
</table>
</form>