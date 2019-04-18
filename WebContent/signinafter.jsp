<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String id = (String)session.getAttribute("id");
	out.println(id + "님, 반갑습니다.");
%>
<Button type="button" onclick="location='logout.jsp'">로그아웃</Button>