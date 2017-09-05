<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <jsp:useBean id="person" class="jsp_Ex_3.Person" scope="page" />
    <jsp:setProperty name="person" property="name" value="홍길동" />
    <jsp:setProperty name="person" property="id" value="test" />
    <jsp:setProperty name="person" property="pw" value="test11"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
이름 : <jsp:getProperty name="person" property="name" /><br/>
아이디 : <jsp:getProperty name="person" property="id" /><br/>
비밀번호 : <jsp:getProperty name="person" property="pw" />

<hr />
이름 : ${person.name}<br/>
아이디 :${person.id}<br/>
비밀번호 :${person.pw}

</body>
</html>