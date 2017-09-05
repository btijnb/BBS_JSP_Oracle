<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
	function readNotice(){
		window.open("notice/notice_read.jsp", "notice","width=250,height=300");
	}
</script>
</head>
<body>

<!-- 공지읽기, 공지쓰기 메뉴 -->
<a href="javascript:readNotice()">공지 읽기</a>
<a href="notice/notice_write.jsp">공지 쓰기</a>

</body>
</html>