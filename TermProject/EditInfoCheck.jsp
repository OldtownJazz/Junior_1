<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 정보수정 화면으로 가기전에
	// 아이디 기준으로 회원정보를 조회해서 다음 화면으로 전달
	
	String id = (String)session.getAttribute("userID");
    	//DB연결에 필요한 변수 선언
	String url = "jdbc:mysql://localhost:3306/odbo";
	String uid = "root";
	String upw = "cat@82830";
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	String sql = "select * from members where id = ?";
	
	try{
		// 드라이버 호출
		Class.forName("com.mysql.jdbc.Driver");
		
		// conn 생성
		conn = DriverManager.getConnection(url, uid, upw);
		
		// pstmt 생성
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		
		// sql실행
		rs = pstmt.executeQuery();
		
		if(rs.next()){
			id = rs.getString("id");
			String mail = rs.getString("email");
			
			// 포워드로 전달하기 위해
			request.setAttribute("EditID", id);
			request.setAttribute("EditMAIL",mail);
			
			// 포워드 이동
			request.getRequestDispatcher("EditInfo.jsp").forward(request, response);
			
		} else{ // 세션이 만료된 경우
			response.sendRedirect("SignIn.jsp");
		}
	} catch(Exception e){
		e.printStackTrace();
		response.sendRedirect("SignIn.jsp");
		//System.out.println(e);
	} finally{
		try{
			if(conn != null) conn.close();
			if(pstmt != null) pstmt.close();
			if(rs != null) rs.close();
		} catch(Exception e){
			e.printStackTrace();
		}
	}
%>