<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title> 관리자 로그인 </title>
	<a href = "Admin.jsp"><img src = "image/crying_cat1.jpg" style="width:50px; height:auto; border-radius:50px"></a><br>
	<hr>
</head>
<body>
<center>
	Home > 관리자 로그인

	<hr>
	<%
		String admin_id = (String) session.getAttribute("adminID");
		String admin_pw = (String) session.getAttribute("adminPW");
		
		out.println("관리자 [ " + admin_id + " ]님, 안녕하세요. <p>");
		
	%>
	
	<%
		if (admin_id == (null)) 
		{			
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('권한이 없습니다.')");
			script.println("location.href = 'Main.jsp'");
			script.println("</script>");
			
		}
	%>
	
	<table border="0">
		<tr>
			<td>
				<form action="MemberList.jsp" method="post" >
					<input type="submit" value="  등록 회원 관리하기 " >
				</form>
			</td>
			<td>
				<form action="Main.jsp" method="post" >
					<input type="submit" value=" 메인 " >
				</form>
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