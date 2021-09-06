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
	글번호 : <%= no %><br>
	<a href="updateForm.jsp?no=<%= no %>"><button>수정</button></a>
	<a href="delete.jsp?no=<%= no %>"><button>삭제</button></a>
	<a href="list.jsp"><button>리스트</button></a>
</body>
</html>