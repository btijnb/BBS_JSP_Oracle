<!--
ex) 학생정보를 DB에 insert (2/4)
*원리 이해용: 코드 실행 오류 가능성 유

	form에서 받은 입력값을/ dto에/ set
	그 dto 객체를/ dao 객체 메소드에/ 넘김
-->

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<jsp:useBean id="sdto" class="com.test.ex.StudentDTO"/>
	<jsp:setProperty property="StudentNumber" name="sdto" />
	<jsp:setProperty property="Password" name="sdto" />
	<jsp:setProperty property="Name" name="sdto" />
	<jsp:setProperty property="Phone" name="sdto" />
	
<jsp:useBean id="stu" class="com.test.ex.StudentDAO" />
	<%
	int res = stu.insertStudent(sdto);
	
	if(res>0) out.println("Contents Submitted");
	else out.println("Submit Error");
	%>	