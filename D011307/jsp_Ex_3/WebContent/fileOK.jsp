<%@ page import = "com.oreilly.servlet.MultipartRequest" %>
<%@ page import = "com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import ="java.util.Enumeration" %>


<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
	String uploadPath = request.getRealPath("upload_file");
	
	int maxSize = 1024*1024 * 10; // 10M
	String file = "";
	String orginFile="";
	
	try{
		MultipartRequest multi = new MultipartRequest(request, uploadPath, maxSize, "EUC-KR", new DefaultFileRenamePolicy());
		
		Enumeration files = multi.getFileNames();
		String names = (String)files.nextElement();
		
		file = multi.getFilesystemName(names);
		orginFile = multi.getOriginalFileName(names);
		
	}catch (Exception e){
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
	file Upload 완료!!!
</body>
</html>