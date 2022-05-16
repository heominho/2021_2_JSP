
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
이 페이진ㄴ to.jsp가 생성한 것입니다.

<%
	String id = request.getParameter("id");
	String pw = request.getParameter("password");
	String name = request.getParameter("name");
	String addr = request.getParameter("addr");
	String email = request.getParameter("email");

%>
<h3>jsp param 액션태그 결과</h3>
<h4>
아이디:<%=id %>
패스워드:<%=pw %>
</h4>
</body>
</html>