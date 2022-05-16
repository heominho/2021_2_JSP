<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>변수의 범위</h3>
<%!
	String strVar = "전역변수입니다";
%>
<%!
	String getStr(){
	return strVar;
}
%>
<%
	String strVar2="지역변수입니다";
%>
<br>
선언문에서 선언한 변수 strVar = <%= getStr() %><br>
스크립틀릿에서 선언한 변수 strVar2=<%=strVar2 %><br>
</body>
</html>