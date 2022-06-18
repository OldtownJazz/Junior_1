<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title> 회원 탈퇴 </title>
</head>
<body>
<center>
	Home > 회원 탈퇴
	<hr>
	회원 탈퇴 실패 ! <br>
	패스워드를 다시 확인해 주세요.<br>

	<form action="WithDraw.jsp" name="w_form" method="post" >
		<p>
		<input type="submit" value=" 회원 탈퇴 재시도 " >
		<button type="button" onclick="location.href='Main.jsp'">메인 페이지</button>
	</form> 
</center>	
</body>
</html>