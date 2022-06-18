<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    


<%
	request.setCharacterEncoding("UTF-8");

	String u_id = request.getParameter("UserID");
	String u_pw = request.getParameter("UserPW");
	String u_mail = request.getParameter("UserMAIL");
	
	
    // DB연결에 필요한 변수 선언
	String url = "jdbc:mysql://localhost:3306/odbo";
	String uid = "root";
	String upw = "cat@82830";
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	String sql = "select * from members where id = ?";
	String sql_i = "INSERT INTO members(id, passwd, email) VALUES (?, ?, ?)";
	//sql_i += "('" + u_id + "','" + u_pw + "','" + u_mail + "')";


	
	try{
		// 드라이버 호출
		Class.forName("com.mysql.jdbc.Driver");
		
		// conn 생성
		conn = DriverManager.getConnection(url, uid, upw);
		
		// pstmt 생성
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, u_id);
		//pstmt.setString(2, u_pw);
		//pstmt.setString(3, u_mail);
		
		
		// sql실행
		rs = pstmt.executeQuery();
		
		if(rs.next()){ // 아이디 중복(인증의 수단 session)
			u_id = rs.getString("id");
	
			response.sendRedirect("SignUpErr.jsp"); // 페이지이동
			
		} else{ // 중복체크 완료
			 // 업데이트 페이지로
			pstmt.close();
			rs.close();
			
			pstmt = conn.prepareStatement(sql_i);
			pstmt.setString(1, u_id);
			pstmt.setString(2, u_pw);
			pstmt.setString(3, u_mail);
			
			int result = pstmt.executeUpdate();
			
			if(result == 1){ // 성공
				response.sendRedirect("SignUpScs.jsp");
			} else{ // 실패
				response.sendRedirect("SignUpErr.jsp");
			}
			
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
 %>