<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title> 본인 확인 </title>
	<a href = "Main.jsp"><img src = "image/bicycle_cat.jpg" style="width:50px; height:50px; border-radius:70%"></a><br>
	<hr>
</head>
<body>
	본인 확인
	<hr>
	<form action="EditInfoAuthCheck.jsp" name="edit_info_auth_check" method="post" >
		<fieldset style="width:200px">
			<legend> 본인 확인 </legend><p>
			
			패스워드 : <br>
			<input type="password" name="userPW"><br>
			
		<div align="center">
			<input type="submit" value=" 입력 "> &nbsp;&nbsp;
		</div><br>
		</fieldset>
	</form>
</body>
</html>
