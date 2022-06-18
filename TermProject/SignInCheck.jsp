<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("MemID");
	String passwd = request.getParameter("MemPW");
	
	//관리자 확인
	if(id.equals("generalcat") && passwd.equals("123456"))
	{
		session.setAttribute("adminID", id);
		session.setAttribute("adminPW", passwd);
		
		response.sendRedirect("Main.jsp");
	}
	
	else
	{
    // DB연결에 필요한 변수 선언
	String url = "jdbc:mysql://localhost:3306/odbo";
	String uid = "root";
	String upw = "cat@82830";
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	String sql = "select * from members where id = ? and passwd = ?";
	
	try{
		// 드라이버 호출
		Class.forName("com.mysql.jdbc.Driver");
		
		// conn 생성
		conn = DriverManager.getConnection(url, uid, upw);
		
		// pstmt 생성
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, passwd);
		
		// sql실행
		rs = pstmt.executeQuery();
		
		if(rs.next()){ // 로그인 성공(인증의 수단 session)
			id = rs.getString("id");
			//String name = rs.getString("name");
		
			session.setAttribute("userID", id);
			session.setAttribute("userPW", passwd);
			
			response.sendRedirect("Main.jsp"); // 페이지이동
			
		} else{ // 로그인 실패
			response.sendRedirect("SignInErr.jsp"); // 실패 페이지
		}
	} catch(Exception e){
		e.printStackTrace();
		out.println(e);
		//response.sendRedirect("SignIn.jsp"); /// 에러가 난 경우도 리다이렉트
	} finally{
		try{
			if(conn != null) conn.close();
			if(pstmt != null) pstmt.close();
			if(rs != null) rs.close();
		} catch(Exception e){
			e.printStackTrace();
		}
	}
	}
 %>