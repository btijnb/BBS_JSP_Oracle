<%@ page import = "com.oreilly.servlet.MultipartRequest" %>
<%@ page import = "com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import = "java.util.Enumeration" %>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    
<% 
/*
*1. 
���� ���ε� logic: -?
	���, �ִ� ������(10MB), ���ϸ�(�ߺ��� ���� �ö�� ���� ����Ͽ�, ���� �ϳ� �� ����)
	DefaultFileRenamePolicy: �ߺ��� ���ϸ� �ڵ� ó�� ex) aa, aa-1, aa-2...
	
	catch~: ���� ó��
	
	(���� ����Ʈ: http://blog.naver.com/heartflow89/221009083830)
	
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
	File Upload �Ϸ�!
</body>
</html>