<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="DB.DBManager"%>

<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	String sequence = request.getParameter("sequence");
	
	try {
		DBManager db = DBManager.getInstance();
		Connection con = db.open();
		String sql = "delete from post where sequence=?";
		PreparedStatement stmt = con.prepareStatement(sql);
		stmt.setString(1, sequence);	
		
		int result = stmt.executeUpdate(); // 성공이면 1 이상, 실패면 0
		if(result > 0) {
			//        http://localhost/JspBoard/list.jsp
			response.sendRedirect("list.jsp");
		} else {
			out.println("수정실패");
		}
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	} catch (SQLException e) {
		e.printStackTrace();
	}	
%>