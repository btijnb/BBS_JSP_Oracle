<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<jsp:useBean id="stuDTO" class="com.test.ex.StudentDTO"/>
	<jsp:setProperty property="StudentNumber" name="stuDTO" />
	<jsp:setProperty property="Password" name="stuDTO" />
	<jsp:setProperty property="Name" name="stuDTO" />
	<jsp:setProperty property="Phone" name="stuDTO" />
	
<jsp:useBean id="stu" class="com.test.ex.StudentDAO" />
	<%
	int res = stu.insertStudent(stuDTO);
	
	if(res>0) out.println("Contents Submitted");
	else out.println("Submit Error");
	%>	