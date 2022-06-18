<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file = "DBconn.jsp" %>
<% 

	String u_pw = request.getParameter("userPW");
	String sql = "DELETE FROM members WHERE passwd = ?";
	
	PreparedStatement sm = conn.prepareStatement(sql);
	sm.setString(1, u_pw);

	int count = sm.executeUpdate();
	
	if(count == 1){
		response.sendRedirect("DrawScs.jsp");
	}else{
		response.sendRedirect("DrawErr.jsp");
	}
	sm.close();
	conn.close();	
%>