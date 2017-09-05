<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.io.*"%>
<!--alim_save.jsp-->
<%
	/*1. ����ڰ� �Է��� ������,�۳���, ���ϸ���
	     ���´�.   	     
	  2. ���ϸ�� FileWriter�� ��Ʈ�� ����
	  	  => ���͸��� �ص� ��
	  3. ��Ʈ���� ���� ������� �۳����� ���Ͽ� ����.
	  4. ��Ʈ�� �ݱ�
	  5. �������� �޽��� ����	*/
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
		out.println("<b>������� �۳����� �Է��ϼ���</b>");
		out.println("<br><a href=alim.jsp>���ư���</a>");
		return;
	}//if----------------
	
	//������ ���ϱ�
	//String allPath=request.getRealPath("/notice");
	//config:���尴ü. ServletConfig 
	//���� ���������� ��� �ִ�.
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
		out.println("IO����: "+e.getMessage());
		return;
	}
 
%>
<script type="text/javascript">
<!--
	alert("<%=filename%> ���Ͽ� ���� �۾� �Ϸ�!");
	location.href
	="<%=request.getContextPath()%>/alim.html";
//-->
</script>