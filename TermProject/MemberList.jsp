<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file = "DBconn.jsp" %>
<%@ page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title> Members List </title>
	<a href = "Admin.jsp"><img src = "image/crying_cat1.jpg" style="width:50px; height:auto; border-radius:50px"></a><br>
	<hr>
</head>
<body>
<center>
	Home > 등록 회원 관리

	<hr>
	<% 
		String u_id = request.getParameter("userID");
		String u_pw = request.getParameter("userPW");
		String u_mail = request.getParameter("userMAIL");
		
		Statement sm = conn.createStatement();
		ResultSet rs = sm.executeQuery("SELECT id, email, signuptime FROM members");
		
		String str = "";
		int count = 1;
		
		while(rs.next()){
			str += count + " : " + rs.getString("id") + " / " + rs.getString("email")
				+ " / " + rs.getString("signuptime") + "<br>";
			count++;
		}
		out.print(str);
		
		rs.close();
		sm.close();
		conn.close();	
	%>
	
<%
		String admin_id = (String) session.getAttribute("adminID");
		if (admin_id == (null)) 
		{			
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('권한이 없습니다.')");
			script.println("location.href = 'Main.jsp'");
			script.println("</script>");
			
		}
%>
	<hr>
	<table border="0">
		<tr>
			<td>
				<form action="AdminWD.jsp" method="post" >
					<input type="submit" value=" 회원 탈퇴시키기 " >
				</form>
			</td>	 
			<td>
			<button type="button" onclick="location.href='Main.jsp'">메인</button>
			</td>
			<td>
				<form action="SignOut.jsp" method="post" >
					<input type="submit" value=" 로그아웃 " >
				</form>
			</td>
			
		</tr>
	</table>  	
</center>	
</body>
</html>	