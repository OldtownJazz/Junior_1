<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title> 회원 탈퇴 </title>
	<a href = "Main.jsp"><img src = "image/bicycle_cat.jpg" style="width:50px; height:50px; border-radius:70%"></a><br>
	<hr>
</head>
<center>
<body>
	회원 탈퇴하기
	<hr>
	<form action="DrawCheck.jsp" name="user_info" method="post">
		<fieldset style="width:200px">
			<legend> 회원 탈퇴 </legend><p>
			
			패스워드 : <br>
			<input type="password" name="userPW"><br>
			
		<div align="center">
			<input type="submit" value=" 회원 탈퇴 "> &nbsp;&nbsp;
		</div><br>
		</fieldset>
	</form>
</center>
</body>
</html>