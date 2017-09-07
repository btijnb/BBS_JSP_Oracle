<!--  
��������/ �д� ������/ ��ü ����

	SUM
	��������� ������/ �о�/ ���
		
	1) ���� ���(rFile/fname(��¥.html)) ����,
		-��¥ ���ϴ� �� = notice_write.jsp ��
		
	2) Filtering�ϰ�: try~ catch~
		-catch�� ����ó�� ���� ex) IOException -?
	
	3) �о� ���: notice_save.jsp ���� ���
		-br.readLine: �������پ� ����
		
-->

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.util.*, java.io.*" %>
    
<%
	Calendar cal = Calendar.getInstance();
	int yy=cal.get(Calendar.YEAR);
	int mm=cal.get(Calendar.MONTH)+1;
	int dd=cal.get(Calendar.DAY_OF_MONTH);
	
	out.println("<font color=red><b>");
	out.println(yy+"�� "+mm+"�� "+dd+"��");
	out.println("</b></font><br/>");
	
	
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
			
	String rFile=config.getServletContext().getRealPath("/notice");
	rFile+="/"+fname;
	
	FileReader fr = null;
	BufferedReader br = null;
			
	try{
		fr = new FileReader(rFile);
		br = new BufferedReader(fr);
		String contents = "";
		while((contents=br.readLine())!=null){
			out.println(contents+"<br/>");
		}
		br.close();
		fr.close();
	}catch(FileNotFoundException e){
		out.println("������ ���������� �����ϴ�.<br/><br/>");
		out.println("<a href='javascript:self.close();'>"); //
		out.println("close </a>");
	}catch(IOException e){
		out.println("IO ����: "+e.getMessage());
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