<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title> Login Error </title>
</head>
<a href = "Home.jsp"><img src = "image/gun_cat.jpg" style="width:50px; height:50px; border-radius:70%"></a><br>
	<hr>
<body>
	<center>
	Home > 로그인 에러
	<hr>
	로그인 오류입니다! <br>
	아이디와 비밀번호를 확인하세요.
	<table>
	<tr>
		<td>
		<form action="SignIn.jsp" name="err_form" method="post" >
		<p>
		<input type="submit" value=" 다시 로그인 " >
	</form>
		</td>
		<td>
		<td><button type="button" onclick="location.href='Main.jsp'">메인</button></td>
		</td>
		</tr>
	</table>	
	</center>
</body>
</html>