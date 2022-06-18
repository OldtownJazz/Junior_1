<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file = "DBconn.jsp" %>
<% 

	String u_pw = request.getParameter("userPW");
	String sql = "SELECT FROM members WHERE passwd = ?";
	
	PreparedStatement sm = conn.prepareStatement(sql);
	sm.setString(1, u_pw);

	int count = sm.executeUpdate();
	
	if(count == 1){
		response.sendRedirect("EditInfoAuthScs.jsp");
	}else{
		response.sendRedirect("EditInfoAuthErr.jsp");
	}
	sm.close();
	conn.close();	
%>