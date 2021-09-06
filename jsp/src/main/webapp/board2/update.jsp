<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 글 수정 처리</title>
</head>
<body>
	<h1>게시판 글수정 처리</h1>
	글번호 : <%= request.getParameter("no") %><br>
	제목 : ${param.title }<br>
	내용 : ${param.content }<br>
	작성자 : ${param.writer }<br>
</body>
<script type="text/javascript">
setTimeout(() => {
	location = "view.jsp?no=2";
}, 5000);
</script>
</html>
<%
	//response.sendRedirect("view.jsp?no=2");
%>