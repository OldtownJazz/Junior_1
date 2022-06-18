<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title> 회원 탈퇴 성공 </title>
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
	회원 탈퇴 성공
	<hr>


	<table border="0">
		<tr>
			<td>
				<button type="button" onclick="location.href='Main.jsp'">메인</button>
			</td>
			<td>
				<form action="MemberList.jsp" method="post" >
					<input type="submit" value="  등록 회원 관리하기 " >
				</form>
			</td>
		</tr>	 
	</table>			
</body>
</center>
</html>