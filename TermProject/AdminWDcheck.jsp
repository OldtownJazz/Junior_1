<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file = "DBconn.jsp" %>
<% 

	String u_id = request.getParameter("userID");
	String sql = "DELETE FROM members WHERE id = ?";
	
	PreparedStatement sm = conn.prepareStatement(sql);
	sm.setString(1, u_id);

	int count = sm.executeUpdate();
	
	if(count == 1){
		response.sendRedirect("AdminWDscs.jsp");
	}else{
		response.sendRedirect("AdminWDerr.jsp");
	}
	sm.close();
	conn.close();	
%>