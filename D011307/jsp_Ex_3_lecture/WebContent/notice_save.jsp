<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- save 처리과정 -->
<%
/*
1. 사용자가 입력한 글제목, 내용, 파일명을 얻어오는 과정
2. 파일명과 FileWriter와 스트림 연결
3. 스트림을 통해서 글제목과 내용을 파일에 쓴다.
4. 스트림 닫기
5. 파일에 쓰기가 완료 되었으면 메시지 띄우기
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
	out.println("공지 내용과 제목을 입력하세요!!!");
	out.println("<a href=notice_write.jsp>돌아가기</a>");
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