<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

<h2>학생 등록</h2>

<form action="insert3.jsp">
	Student Number: <input type="text" name="StudentNumber" />
	Password:       <input type="text" name="Password" />
	Name:           <input type="text" name="Name" />
	Phone:          <input type="text" name="Phone" />
<input type="submit" value="Submit"/>
</form>

<!--
ex) 학생정보를 DB에 insert (1/4)
*원리 이해용: 코드 실행 오류 가능성 유

	입력값을/ form 통해/ get방식으로 submit
-->

</body>
</html>