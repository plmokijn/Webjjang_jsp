<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	long no = Long.parseLong(request.getParameter("no"));
	String title = "java";
	String content = "java jjang";
	String writer = "jkm";
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 글수정</title>
</head>
<body>
	<h1>게시판 글수정</h1>
	<form action="update.jsp" method="post">
		글번호 : <input name="no" value="<%= no %>" readonly="readonly"><br>
		제목 : <input name="title" value="<%= title %>" required="required" pattern=".{4,20}"
		title="글 제목을 4자 이상 20자 이내로 작성하셔야 합니다."><br>
		내용 : <textarea rows="5" cols="80" name="content" required="required"><%= content %></textarea><br>
		작성자 : <input name="writer" value="<%= writer %>" required="required"><br>
		<button>수정</button>
	</form>
</body>
</html>