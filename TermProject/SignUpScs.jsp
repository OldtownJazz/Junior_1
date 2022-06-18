<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title> 회원 등록 성공 </title>
	<a href = "Home.jsp"><img src = "image/gun_cat.jpg" style="width:50px; height:50px; border-radius:70%"></a><br>
	<hr>
</head>
<body>
<center>
	회원 등록 성공 
	<hr>
	
	회원 가입을 축하합니다! <br>
	<br><br>

	<table border="0">
		<tr>
			<td>
				<form action="SignIn.jsp" method="post" >
						<input type="submit" value=" 로그인 " >
				</form>
			</td>
			<td>
			<button type="button" onclick="location.href='Main.jsp'">메인</button>
			</td>
		</tr>
	</table>
</center>		
</body>
</html>	