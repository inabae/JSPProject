<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<form method="post" action="signup_proc.jsp">
	<%
		out.println("*영어와 숫자 또는 특수문자만 사용가능합니다.*");
	%>
	<table border="1">
		<tr>
			<td>ID</td>
			<td><input type="text" name="id" onblur="move()"></td>
		</tr>
		<tr>
			<td>PW</td>
			<td><input type="password" name="pw"></td>
		</tr>
		<tr>
			<td>닉네임</td>
			<td><input type="text" name="name"></td>
		</tr>
		<tr>
			<td>E-MAIL</td>
			<td><input type="text" name="email"></td>
		</tr>
		<tr>
			<td>PHONE</td>
			<td><input type="text" name="phone"></td>
		</tr>
	</table>
	<input type="submit" value="가입하기">
</form>