<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.util.*"%>
    
<% 
	Calendar cal=Calendar.getInstance();
	int yy=cal.get(Calendar.YEAR);
	int mm=cal.get(Calendar.MONTH)+1;
	int dd=cal.get(Calendar.DAY_OF_MONTH);
	out.println("<font color=blue><b>");
	out.println(yy+"�� "+mm+"�� "+dd+"��");
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

<h3>���� ������ ����</h3>
<form action="alim_save.jsp" method="POST">
<table border=1 width=500>
	<tr>
		<th>����</th>
		<td align="left">
		<input type=text name="title">
		</td>
	</tr>
	<tr>
		<th>��������</th>
		<td align="left">
			<textarea name="info" rows="5" cols="50"></textarea>
		</td>
	</tr>
	<tr>
		<th>���ϸ�</th>
		<td align="left">
		<input type="text" name="filename"
		 value="<%=filename%>" disabled>
		<input type="hidden" name="filename"
		 value="<%=filename%>"> 
		</td>
	</tr>
	<tr>
		<td colspan=2 align=center>
		<input type=submit value="����"> 
		<input type=reset value="���">
		</td>
	</tr>
</table>
</form>