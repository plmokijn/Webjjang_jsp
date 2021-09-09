<%@page import="com.webjjang.board.dto.BoardDTO"%>
<%@page import="java.util.List"%>
<%@page import="com.webjjang.board.dao.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 

<% System.out.println("/board/list.jsp"); %>

<%
	BoardDAO dao = new BoardDAO();
	List<BoardDTO> list = dao.list();
	
	request.setAttribute("list", list);
%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>게시판 리스트</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	
	<style type="text/css">
	.dataRow:hover{
		background: #ddd;
		cursor: pointer; 
	}
	</style>
	
	<script type="text/javascript">
		$(function() {
			$(".dataRow").click(function()  {
				location.href = "view.jsp";
			});
		});
	</script>
</head>
<body>
	<div class="container">
		<h1>게시판 리스트</h1>
		${list }
		<table class="table">
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일</th>
				<th>조회수</th>
			</tr>
			
			<c:forEach items="${list }" var="dto">
			<tr class="dataRow">
				<td>${dto.no }</td>
				<td>${dto.title }</td>
				<td>${dto.writer }</td>
				<td>${dto.writeDate }</td>
				<td>${dto.hit }</td>
			</tr>
			</c:forEach>

			<tr>
				<td colspan="5">
					<a href="writeForm.jsp" class="btn btn-default">글쓰기</a>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>