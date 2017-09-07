<!--
��������/ ���� ������/ ��ü ����

	SUM
	���ͼ�/ ��������/ ����


	1) ���ڵ� �����ϰ�, �Է¹��� �� ����
	
	2) ���� �͵� = null or �������/ �������� ���� form���� ���ư���
		-trim: �յڰ��� ����: ��ü �ڿ� �ٿ� ��
		-return: �� ���� �ڵ�� ���� x *����":= php�� exit"
	
	3) �������� ����� ���/ Ȯ��
		-2���� ���: request or ServletContext/ getRealPath
	
	4) ���� �͵���/ ���Ͽ� ����: ��Ʈ�� ����-?
			���ϸ�(allFname)��/ FileWriter ����/ Stream �����Ͽ�,
			title, content�� ���Ͽ� ����(tomcat/.../notice���� ���� Ȯ�� ����)

��Ÿ
	import="java.io.*" ���� �� �˷��� -?
	
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
	out.println("���� ����� ������ �Է��ϼ���.");
	out.println("<a href=notice_write.jsp>���ư���</a>");
	return;
}
   
//----------------------------------------------------

ServletContext ctx = config.getServletContext();
String allPath     = ctx.getRealPath("/notice"); 

//String allPath     = request.getRealPath("/notice");

out.println("�������� ����� ���: "+allPath);

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
	out.println("����� ����: "+e.getMessage());
	return;
}

%>     


<script type="text/javascript">
	alert("<%=fileName%> ���Ͽ� ���� �۾� �Ϸ�.");
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