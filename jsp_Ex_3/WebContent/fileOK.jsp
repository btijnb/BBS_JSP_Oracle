<%@ page import = "com.oreilly.servlet.MultipartRequest" %>
<%@ page import = "com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import = "java.util.Enumeration" %>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    
<% 
/*
*1. 
파일 업로드 logic: -?
	경로, 최대 사이즈(10MB), 파일명(중복된 파일 올라올 때를 대비하여, 변수 하나 더 만듦)
	DefaultFileRenamePolicy: 중복된 파일명 자동 처리 ex) aa, aa-1, aa-2...
	
	catch~: 에러 처리
	
	(참고 사이트: http://blog.naver.com/heartflow89/221009083830)
	
*/


//*1
	String uploadPath = request.getRealPath("upload_file");
	int maxSize = 1024*1024*10;
	String file= "";
	String originFile="";
	
	try{
		MultipartRequest multi = new MultipartRequest(request, uploadPath, maxSize, "EUC-KR", new DefaultFileRenamePolicy());
		
		Enumeration files = multi.getFileNames();
		String names=(String)files.nextElement();
		
		file=multi.getFilesystemName(names);
		originFile=multi.getOriginalFileName(names);
	}catch(Exception e){
		e.printStackTrace();
	}
	
%>    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	File Upload 완료!
</body>
</html>