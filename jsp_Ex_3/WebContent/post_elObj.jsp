<!--

*흐름:

elObj.jsp -> post_elObj.jsp

	form 태그/ get 방식으로/ name, value 넘김
		->express 표현식: post_elObj.jsp에서/action 태그로 설정한 변수명으로/ 값 나타냄
		
		->EL: form 태그/ name으로/ 값 나타냄
			*배열로 받아올 수도 있음 ex) ${param["id"]}
		
	application, session, pageContext, request 내장 객체에/ name, value 태움
		->EL: 각 내장객체의 value 출력.
			
			*출력 안 되는 것들의 이유: 
			 pageScope는 page 범위 벗어나서, 
			 requestScope는 elObj.jsp와 post_elObj.jsp의 request가 다름 -?

	.xml -?
	
-->


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
	String id1=request.getParameter("id");
	String pw1=request.getParameter("pw");
%>

<h3>Express 표현식</h3><br>
아이디:   <%= id1 %> <br/>
비밀번호:  <%= pw1 %> <br/>


<hr/>


<h3>Expression Language</h3><br>

아이디:   ${param.id}<br/>
비밀번호:  ${param.pw}<br/>

아이디:   ${param["id"]}<br/>
비밀번호: ${param["pw"]}<br/>


<hr/>


<h3>Expression Language 내장 객체</h3><br>

applicationScope: ${applicationScope.appName}<br/>
sessionScope:     ${sessionScope.sessionName}<br/>
pageScope:        ${pageScope.pageName}<br/>
requestScope:     ${requestScope.reqName}


<hr/>

<h3>context 초기화 파라미터</h3>

${initParam.cont_1}<br/>
${initParam.cont_2}<br/>
${initParam.cont_3}

</body>
</html>