<!--

��������/ ���� ������ / ��ü ����

	<head>
		JS ����� ���� �Լ�: notice�� �׳� ����â �̸�
	</head>
	
	<body>
		��ũ 1
		��ũ 2
	</body>

-->

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

<script type="text/javascript">
	function readNotice(){
		window.open("notice/notice_read.jsp", "notice", "width=250, height=300");
	}
</script>

</head>


<body>
	<a href="javascript:readNotice()">���� �б�</a>
	<a href="notice/notice_write.jsp">���� ����</a>

</body>
</html>