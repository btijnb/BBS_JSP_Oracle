<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	String id1 = request.getParameter("id");
	String pw = request.getParameter("pw");
%>

아이디:<%= id1 %> <br/>
비밀번호:<%= pw %> <br/>
<hr />

아이디 : ${param.id}<br/>
비밀번호 : ${param.pw}<br/>
아이디 : ${param["id"]}<br/>
비밀번호 : ${param["pw"]}<br/>

<hr />
applicationScope: ${applicationScope.appName}<br/>
sessionScope: ${sessionScope.sessionName}<br/>
pageScope: ${pageScope.pageName}<br/>
requestScope: ${requestScope.reqName}

<hr/>
- context 초기화 파라미터 <br/>
${initParam.cont_1}<br/>
${initParam.cont_2}<br/>
${initParam.cont_3}




</body>
</html>