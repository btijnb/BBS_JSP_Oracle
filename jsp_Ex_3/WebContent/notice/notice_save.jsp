<!--
공지사항/ 저장 페이지/ 전체 구조

	SUM
	얻어와서/ 면접보고/ 저장


	1) 인코딩 설정하고, 입력받은 것 얻어옴
	
	2) 얻어온 것들 = null or 비었으면/ 공지사항 쓰기 form으로 돌아가기
		-trim: 앞뒤공백 제거: 객체 뒤에 붙여 씀
		-return: 이 다음 코드는 실행 x *추측":= php의 exit"
	
	3) 공지사항 저장될 경로/ 확인
		-2가지 방법: request or ServletContext/ getRealPath
	
	4) 얻어온 것들을/ 파일에 저장: 스트림 개념-?
			파일명(allFname)을/ FileWriter 통해/ Stream 연결하여,
			title, content를 파일에 쓴다(tomcat/.../notice에서 파일 확인 가능)

기타
	import="java.io.*" 같은 걸 알려면 -?
	
-->


<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.io.*" %>
    
<%
request.setCharacterEncoding("euc-kr");
String title    = request.getParameter("title");
String content  = request.getParameter("info");
String fileName = request.getParameter("filename");

if(fileName == null || fileName.trim().equals("")){
	response.sendRedirect("notice_write.jsp");
	return;
}

if(title==null || content==null || title.trim().equals("")||content.trim().equals("")){
	out.println("공지 내용과 제목을 입력하세요.");
	out.println("<a href=notice_write.jsp>돌아가기</a>");
	return;
}
   
//----------------------------------------------------

ServletContext ctx = config.getServletContext();
String allPath     = ctx.getRealPath("/notice"); 

//String allPath     = request.getRealPath("/notice");

out.println("공지사항 저장될 경로: "+allPath);

//-----------------------------------------------------

String allFname = allPath+"/"+fileName;

FileWriter fw  = null;
PrintWriter pw = null;

try{
	fw = new FileWriter(allFname);
	pw = new PrintWriter(fw, true);
	pw.println("<body>");
	pw.println("<b>"+title+"</b><br/>");
	pw.println(content);
	pw.println("</body>");
	
	pw.close();
	fw.close();
	
}catch(IOException e){
	out.println("입출력 오류: "+e.getMessage());
	return;
}

%>     


<script type="text/javascript">
	alert("<%=fileName%> 파일에 쓰기 작업 완료.");
	location.href="<%=request.getContextPath()%>/notice_main.jsp";
</script>    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>