
<%@page import="java.util.Date"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
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
	Date date =new Date();
SimpleDateFormat sdf = new SimpleDateFormat("hh:mm:ss");
String time = sdf.format(date);
Calendar cal = Calendar.getInstance();

%>
	<h1>오늘은 <%=cal.get(Calendar.YEAR) %>년
	<%=cal.get(Calendar.MONTH)+1 %>월
	<%=cal.get(Calendar.DATE) %>일 입니다</h1>
	<h2>현재시각 <%= time %></h2>
</body>
</html>