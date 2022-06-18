<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title> Login Form </title>
	<script type="text/javascript">	
		function checkFun() 
		{
			var f = document.loginForm;
			if(f.MemID.value == "")
			{
				alert("아이디를 입력해 주세요.");
				f.MemID.focus();
				return false;
			}
			else if(f.MemPW.value == "")
			{
				alert("비밀번호를 입력해 주세요.");
				f.MemPW.focus();
				return false;
			}
			
			else return true;
		}		
	</script>

	<a href = "Home.jsp"><img src = "image/gun_cat.jpg" style="width:50px; height:50px; border-radius:70%"></a><br>
	<hr>
</head>
<body>

	<%
		if(session.getAttribute("adminID") != null)
	{
		response.sendRedirect("Admin.jsp");
	}
		else if(session.getAttribute("userID") != null)
	{
		response.sendRedirect("Main.jsp");
	}	
	
	%>
	
<center>
	로그인
	<hr>

	<form name="loginForm" action="SignInCheck.jsp" 
		method="post" onsubmit="return checkFun()" >
		<fieldset style="width:260px">
		
			<legend> 로그인 화면 </legend><p>
			<table>
			<tr height="30">
				<td align="right">아이디&nbsp;</td>
				<td><input type="text" name="MemID"></td>
			</tr>
			<tr height="30">
				<td align="right">비밀번호&nbsp;</td>
				<td><input type="password" name="MemPW"></td>
			</tr>
			<tr height="50">
				<td><input type="submit" value=" 로그인  "></td>
				<td><button type="button" onclick="location.href='Home.jsp'">홈</button></td>
			</tr>
			
			</table>
		</fieldset>
	</form>
</center>
</body>
</html>