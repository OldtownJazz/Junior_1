<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title> 회원 가입 </title>
	<script type="text/javascript">	
		function checkFun() 
		{
			var f = document.User_info;
			if(f.UserID.value.length < 2 || f.UserID.value.length > 16)
			{
				alert("아이디는 2~16자 이내로 입력해야 합니다.");
				f.UserID.focus();
				return false;
			}
			else if(f.UserPW.value.length < 6)
			{
				alert("비밀번호는 6자 이상으로 입력해야 합니다.");
				f.UserPW.focus();
				return false;
			}
			else if(f.UserMAIL.value == "")
			{
				alert("이메일 주소는 반드시 입력해야 합니다.");
				f.UserMAIL.focus();
				return false;
			}			
			else return true;
		}		
	</script>
	<a href = "Home.jsp"><img src = "image/gun_cat.jpg" style="width:50px; height:50px; border-radius:70%"></a><br>
	<hr>
</head>
<body>
<center>
	회원 가입
	<hr>

	<form action="SignUpCheck.jsp" name="User_info" 
		method="post" onsubmit="return checkFun()">
		<fieldset style="width:230px">
			<legend> 회원 가입 화면 </legend><p>
	
			아이디 : <br>
			<input type="text" size = "16" name="UserID"><br><br>
		
			비밀번호 : <br> 
			<input type="password" size = "16" name="UserPW"><br><br>
			
			이메일 : <br>
			<input type="email" size="30" name="UserMAIL"><br>		
			<hr>
			<input type="reset" value=" 다시작성 ">
			<input type="submit" value=" 가입하기 ">
			<button type="button" onclick="location.href='Home.jsp'">홈</button>
			<br><br>
		</fieldset>
	</form>
</center>
</body>
</html>