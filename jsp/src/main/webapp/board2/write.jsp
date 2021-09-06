<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	String writer = request.getParameter("writer");

	System.out.println("제목 : " + title);
	System.out.println("내용 : " + content);
	System.out.println("작성자 : " + writer);
	
	response.sendRedirect("list.jsp");
%>
