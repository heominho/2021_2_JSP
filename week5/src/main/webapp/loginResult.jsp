<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	if("admin".equals(id)&&"1234".equals(pw)){
		out.println(id+"님 안녕하세요~!");
	}
	else if (!"admin".equals(id)){
		out.println("아이디가 틀립니다.");
	}
	else{
		out.println("비밀번호가 틀립니다.");
	}
	%>
	<br>
	<br>
	<form action = "index.jsp" method="post">
		<input type="submit" value="돌아가기">
	</form>
</body>
</html>