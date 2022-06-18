<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file = "DBconn.jsp" %>
<%@ page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title> 회원 탈퇴 </title>
</head>
<body>

	<a href = "Admin.jsp"><img src = "image/crying_cat1.jpg" style="width:50px; height:auto; border-radius:50px"></a><br>
	<hr>
	<center>
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
	<form action="AdminWDcheck.jsp" name="user_info" method="post">
		<fieldset style="width:200px">
		
		
			<legend> 탈퇴시키기 </legend><p>
	
			아이디 : <br>
			<input type="text" name="userID"><br>
			
		<div align="center">
			<input type="submit" value=" 회원 탈퇴 "> &nbsp;
			
			<button type="button" onclick="location.href='Main.jsp'">메인</button>
		</div><br>
		</fieldset>
	</form>
</center>
</body>
</html>