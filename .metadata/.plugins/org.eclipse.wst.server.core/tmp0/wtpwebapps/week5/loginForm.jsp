<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>★ 로그인 화면 ★</h3>
<table  border="1" cellpadding="1" cellspacing="1">
	<form action = "loginResult.jsp" method ="post">
	<tr>
	<td>
	아이디
	</td>
	<td>
	<input type="text" name="id">
	</td>
	</tr>
	
	
	<tr>
	<td>
	비밀번호
	</td>
	<td>
	<input type="password" name="pw">
	</td>
	</tr>
	
	
	<tr>
	<td style="text-align:center" colspan="2">
	<input type="submit" value="로그인">
	</td>
	</tr>
	</form>

</table>
</body>
</html>