<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="DB.DBManager"%>

<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String phone = request.getParameter("phone");

	try {
		DBManager db = DBManager.getInstance();
		Connection con = db.open();
		String sql = "insert into person_info values (?, ?, ?, ?, ?)";
		PreparedStatement stmt = con.prepareStatement(sql);
		stmt.setString(1, id);
		stmt.setString(2, pw);
		stmt.setString(3, name);
		stmt.setString(4, email);
		stmt.setString(5, phone);
		stmt.executeUpdate();
		response.sendRedirect("signin.jsp");

		//입력받은 값이 
		// 		for (int i = 0; i < id.length(); i++) {
		// 			char cid = id.charAt(i);
		// 			if(cid >= 33 && cid <= 126){

		// 			}else{

		// 			}

		// 		}
		//아무것도 입력안하면 안되게

	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	} catch (SQLException e) {
		e.printStackTrace();
	}
%>