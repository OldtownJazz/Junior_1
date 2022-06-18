<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title> 메인 화면 </title>
	<a href = "Home.jsp"><img src = "image/gun_cat.jpg" style="width:50px; height:50px; border-radius:70%"></a><br>
	<hr>
	
</head>
<body>
<center>
	<img src="image/gun_cat.jpg" width="400" height="300">
	<p>
	<table border="0">
		<tr>
			<td>
				<form action="SignIn.jsp" method="post" >
					<input type="submit" value=" 기존 사용자 접속 " >
				</form>
			</td>
			<td>	
				<form action="SignUp.jsp" method="post" >
					<input type="submit" value=" 회원 가입 " >
				</form>
			</td>
		</tr>	
	</table>	
</center> 	
</body>
</html>