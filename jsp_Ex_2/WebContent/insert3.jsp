<!--
ex) �л������� DB�� insert (2/4)
*���� ���ؿ�: �ڵ� ���� ���� ���ɼ� ��

	form���� ���� �Է°���/ dto��/ set
	�� dto ��ü��/ dao ��ü �޼ҵ忡/ �ѱ�
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