<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"
     import="java.util.*,java.io.*"%>
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
	out.println("["+filename+"]");
	
	String readFile
	=config.getServletContext().getRealPath("/notice");
	readFile+="/"+filename;
	
	//out.println("readFile: "+readFile);
	//out.println("<br>");
	
	FileReader fr=null;
	BufferedReader br=null;
	try{
		fr=new FileReader(readFile);
		br=new BufferedReader(fr);
		String contents="";
		while((contents=br.readLine())!=null){
			
			out.println(contents+"<br>");
		}
		fr.close(); br.close();		
		
	}catch(FileNotFoundException e){
		out.println("<b>������ �������� �����ϴ�.</b>");
		out.println("<a href='javascript:self.close();'>");
		out.println("�ݱ�</a>");
	}catch(IOException e){
		out.println("IO����: "+e.getMessage());
	}
	

%>

<%
/* 1. ���������� �б� ���� ���� ��¥�� ���Ѵ�.
2. ��¥.html[20080717.html] -> ���ϸ��� �����
3. �� ���ϸ��� ������ �д� ��彺Ʈ�� ����
4. ���͸�
5. ��Ʈ���� ���� �б�
6. ���� ������ ���������� ���
7. ��Ʈ�� �ݱ�
*/
%>