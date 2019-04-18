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
		Connection con = db.open(); //  asc
		
		String sql = "select * from post where id = ?";
		PreparedStatement stmt = con.prepareStatement(sql);
		stmt.setString(1, sequence);

		ResultSet rs = stmt.executeQuery();
		if (rs.next()) {
			String sequence1 = rs.getString("sequence");
			String title = rs.getString("title");
			String content = rs.getString("content");
			String id = rs.getString("id");
%>
<h1><%=title%>
	/
	<%=sequence1%></h1>
<p><%=content%></p>
<p><%=id%></p>
<button type="button" onclick="location='update.jsp?id=<%=id%>'">수정</button>
<button type="button" onclick="del()">삭제</button>
<%
	}

	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	} catch (SQLException e) {
		e.printStackTrace();
	}
%>
<script>
	function del() {
		var isOK = confirm("삭제할래?");
		if(isOK){
			location = 'delete_proc.jsp?sequence=<%=sequence%>';
		}
	}
</script>