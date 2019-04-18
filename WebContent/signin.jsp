<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<form method="post" action="signin_proc.jsp">
	<table border="1" bordercolor="white" align="right">
		<tr>
			<td>ID</td>
			<td><input type="text" name="id"></td>
		</tr>
		<tr>
			<td>PW</td>
			<td><input type="password" name="pw"></td>
		</tr>
		<div style="float: right;">
			<input type="submit" value="로그인">
			<Button type="button" onclick="location='signup.jsp'">회원가입</Button>
		</div>
	</table>
</form>
<%@include file="/list.jsp"%>