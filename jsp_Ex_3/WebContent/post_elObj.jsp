<!--

*�帧:

elObj.jsp -> post_elObj.jsp

	form �±�/ get �������/ name, value �ѱ�
		->express ǥ����: post_elObj.jsp����/action �±׷� ������ ����������/ �� ��Ÿ��
		
		->EL: form �±�/ name����/ �� ��Ÿ��
			*�迭�� �޾ƿ� ���� ���� ex) ${param["id"]}
		
	application, session, pageContext, request ���� ��ü��/ name, value �¿�
		->EL: �� ���尴ü�� value ���.
			
			*��� �� �Ǵ� �͵��� ����: 
			 pageScope�� page ���� �����, 
			 requestScope�� elObj.jsp�� post_elObj.jsp�� request�� �ٸ� -?

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

<h3>Express ǥ����</h3><br>
���̵�:   <%= id1 %> <br/>
��й�ȣ:  <%= pw1 %> <br/>


<hr/>


<h3>Expression Language</h3><br>

���̵�:   ${param.id}<br/>
��й�ȣ:  ${param.pw}<br/>

���̵�:   ${param["id"]}<br/>
��й�ȣ: ${param["pw"]}<br/>


<hr/>


<h3>Expression Language ���� ��ü</h3><br>

applicationScope: ${applicationScope.appName}<br/>
sessionScope:     ${sessionScope.sessionName}<br/>
pageScope:        ${pageScope.pageName}<br/>
requestScope:     ${requestScope.reqName}


<hr/>

<h3>context �ʱ�ȭ �Ķ����</h3>

${initParam.cont_1}<br/>
${initParam.cont_2}<br/>
${initParam.cont_3}

</body>
</html>