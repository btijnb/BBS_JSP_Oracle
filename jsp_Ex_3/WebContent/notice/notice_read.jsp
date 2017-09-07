<!--  
공지사항/ 읽는 페이지/ 전체 구조

	SUM
	지정경로의 파일을/ 읽어/ 출력
		
	1) 파일 경로(rFile/fname(날짜.html)) 만들어서,
		-날짜 구하는 법 = notice_write.jsp 때
		
	2) Filtering하고: try~ catch~
		-catch의 예외처리 유형 ex) IOException -?
	
	3) 읽어 출력: notice_save.jsp 때와 비슷
		-br.readLine: 한줄한줄씩 읽음
		
-->

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.util.*, java.io.*" %>
    
<%
	Calendar cal = Calendar.getInstance();
	int yy=cal.get(Calendar.YEAR);
	int mm=cal.get(Calendar.MONTH)+1;
	int dd=cal.get(Calendar.DAY_OF_MONTH);
	
	out.println("<font color=red><b>");
	out.println(yy+"년 "+mm+"월 "+dd+"일");
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
		out.println("오늘은 공지사항이 없습니다.<br/><br/>");
		out.println("<a href='javascript:self.close();'>"); //
		out.println("close </a>");
	}catch(IOException e){
		out.println("IO 오류: "+e.getMessage());
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