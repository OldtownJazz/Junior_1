<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title> 회원 탈퇴 </title>
	<a href = "Admin.jsp"><img src = "image/crying_cat1.jpg" style="width:50px; height:auto; border-radius:50px"></a><br>
	<hr>
</head>
<body>

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

<center>
	회원 탈퇴
	<hr>
	회원 탈퇴 실패 ! <br>
	아이디를 다시 확인해 주세요.<br>

	<form action="AdminWD.jsp" name="w_form" method="post" >
		<p>
		<input type="submit" value=" 회원 탈퇴 재시도 " >
		<button type="button" onclick="location.href='Main.jsp'">메인</button>
	</form> 
</center>	
</body>
</html>