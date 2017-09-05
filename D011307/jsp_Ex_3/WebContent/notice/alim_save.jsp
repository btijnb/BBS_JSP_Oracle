<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.io.*"%>
<!--alim_save.jsp-->
<%
	/*1. 사용자가 입력한 글제목,글내용, 파일명을
	     얻어온다.   	     
	  2. 파일명과 FileWriter와 스트림 연결
	  	  => 필터링을 해도 됨
	  3. 스트림을 통해 글제목과 글내용을 파일에 쓴다.
	  4. 스트림 닫기
	  5. 성공여부 메시지 띄우기	*/
	request.setCharacterEncoding("euc-kr");
	String title=request.getParameter("title");
	String info=request.getParameter("info");
	String filename=request.getParameter("filename");
	
	if(filename==null||filename.trim().equals("")){
		response.sendRedirect("alim.jsp");
		return;
	}
	
	if(title==null||info==null||
			title.trim().equals("")||
			info.trim().equals("")){
		out.println("<b>글제목과 글내용을 입력하세요</b>");
		out.println("<br><a href=alim.jsp>돌아가기</a>");
		return;
	}//if----------------
	
	//절대경로 구하기
	//String allPath=request.getRealPath("/notice");
	//config:내장객체. ServletConfig 
	//서블릿 구성정보를 담고 있다.
	ServletContext ctx=config.getServletContext();
	String allPath=ctx.getRealPath("/notice");

	
	out.println("allPath="+allPath);
	String allFilename=allPath+"/"+filename;
	
	FileWriter fw=null;
	PrintWriter pw=null;
	try{
		fw=new FileWriter(allFilename);
		pw=new PrintWriter(fw,true);
		pw.println("<body bgcolor='pink'>");
		pw.println(title);
		pw.println(info);
		pw.println("</body>");
				
		pw.close();
		fw.close();
		
	}catch(IOException e){
		out.println("IO오류: "+e.getMessage());
		return;
	}
 
%>
<script type="text/javascript">
<!--
	alert("<%=filename%> 파일에 쓰기 작업 완료!");
	location.href
	="<%=request.getContextPath()%>/alim.html";
//-->
</script>