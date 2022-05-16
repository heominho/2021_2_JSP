<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
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
	Date date=new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("hh:mm:ss");
	String time = sdf.format(date);
	Calendar cal = Calendar.getInstance();
%>
	<table width="100%" border="0" cellpadding="0" cellspacing="0">
		<tr><td bgcolor="black">
		<jsp:include page="/menu.jsp" flush="false" />
		</td>
		</tr>
		<tr height="200"><td bgcolor="lightgray">
		
		<h1 align="center">도서 웹 쇼핑몰</h1>
		
		</td>
		</tr>
		<tr><td>
		<h3 align="center">Welcome to Book Market!</h3>
		<h4 align="center">
		현재 접속 시각 : <%= cal.get(Calendar.YEAR) %>년
		<%= cal.get(Calendar.MONTH)+1 %>월
		<%= cal.get(Calendar.DATE) %>일
		<%= time %>
		</h4>
		</td>
		</tr>
		<tr><td>
		</td>
		</tr>
	</table>
	<hr>
		<jsp:include page="/footer.jsp" flush="false"/>
</body>
</html>