<!--
��������/ �������� ���� form/ ��ü ����

	import java.util.*: Calendar ��ü �ҷ����� ����
	
	Calendar ��ü
	�������� ������
	print ������
	
	������.html ����� �����ϱ� ���� ����
		-1�ڸ��� ��, ���� �տ� 0�� �ٿ��ش�

	--------------------------------

	form
		-<input~ disabled: form �� ���� ��, ���� ���޵��� �ʰ� ���Ƴ���
		-�� page�� form����, hidden���� fname ����.
	
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
	out.println(yy+"��"+mm+"��"+dd+"��");
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
	
	<h2>������ ��������</h2>
	
	<form action="notice_save.jsp" method="post">
		<table border=1 width=500>

			<tr>
				<th>����</th>
				<td><input type="text" name="title"/></td>
			</tr>

			<tr>
				<th>��������</th>
				<td><textarea name="info" rows="5" cols="50"></textarea></td>
			</tr>			

			<tr>
				<th>���ϸ�</th>
				
				<td>
					<input type="text" name="filename" value="<%=fname%>" disabled>
					<input type="hidden" name="filename" value="<%=fname%>">
				</td>
			</tr>

			<tr>
				<td colspan=2 align="center">
					<input type="submit" value="�ۼ�" />
					<input type="reset" value="���" />
			</tr>			
		</table>
	</form>
</body>
</html>