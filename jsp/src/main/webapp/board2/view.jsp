<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String noStr = request.getParameter("no");
	long no = Long.parseLong(noStr);
	//System.out.println("no ==== " + noStr);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 글보기</title>
</head>
<body>
	<h1>게시판 글보기</h1>
	글번호 : <%= no %>
</body>
</html>