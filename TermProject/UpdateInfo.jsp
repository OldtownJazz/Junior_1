<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
	1. 폼에서 넘어온 데이터를 각각 처리합니다.
	2. SQL문을 이용해서 DB에 업데이트 작업.
	3. executeUpdate() 성공시 1을 반환, 실패시 0을 반환
	4. 업데이트가 성공하면 세션에 저장된 이름을 변경한 후에
		update_success.jsp로 리다이렉트
		
	      업데이트에 실패하면, update_fail.jsp로 리다이렉트
	*/
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("UserID");
	String pw = request.getParameter("UserPW");
	String mail = request.getParameter("UserMAIL");
	
    //DB연결에 필요한 변수 선언
	String url = "jdbc:mysql://localhost:3306/odbo";
	String uid = "root";
	String upw = "cat@82830";
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	String sql = "update members set passwd = ?, email = ?"
			   + "where id = ?";
	
	try{
		// 드라이버 호출
		Class.forName("com.mysql.jdbc.Driver");
		
		// conn 생성
		conn = DriverManager.getConnection(url, uid, upw);
		
		// pstmt 생성
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, pw);
		pstmt.setString(2, mail);
		pstmt.setString(3, id);
		
		int result = pstmt.executeUpdate();
		
		if(result == 1){
			//session.setAttribute("user_name", name);
			
			response.sendRedirect("UpdateInfoScs.jsp");
		} else{
			response.sendRedirect("UpdateInfoErr.jsp");
		}
	} catch(Exception e){
		e.printStackTrace();
		response.sendRedirect("UpdateInfoErr.jsp");
	} finally{
		try{
			if(conn != null) conn.close();
			if(pstmt != null) pstmt.close();
		} catch(Exception e){
			e.printStackTrace();
		}
	}
%>