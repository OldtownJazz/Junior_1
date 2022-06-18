<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 이전화면에서 전달받은 데이터를 받습니다.
	// 화면에 미리 보여지도록 처리를 하세요~
	request.setCharacterEncoding("UTF-8");

	String id = (String)request.getAttribute("EditID");
	String email = (String)request.getAttribute("EditMAIL");
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 수정</title>

<script type="text/javascript">	
		function checkFun() 
		{
			var f = document.EditInfo;
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
	<a href = "Main.jsp"><img src = "image/bicycle_cat.jpg" style="width:50px; height:50px; border-radius:70%"></a><br>
	<hr>
</head>
<body>
<center>
	<h2>정보 수정페이지</h2>
	
	<form action="UpdateInfo.jsp" name="EditInfo"method="post" onsubmit="return checkFun()">
		아이디:<input type="text" name="UserID" value="<%=id %>" readonly><br/>
		비밀번호:<input type="password" name="UserPW"><br/>
		이메일:<input type="email" name="UserMAIL" value="<%=email %>"><br><br>
			<input type="submit" value="수정">
			<button type="button" onclick="location.href='WithDraw.jsp'">회원 탈퇴</button>
	</form>
	
	<hr/>
</center>
</body>
</html>