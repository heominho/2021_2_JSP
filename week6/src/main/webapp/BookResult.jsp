<%@page import="java.util.Date"%>
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
<h3>&emsp;&emsp;◆도서 등록 결과◆</h3>
<%
	request.setCharacterEncoding("utf-8");
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	Date date = new Date();
	String strDate= sdf.format(date);
%>
<jsp:useBean id="Book" class="week6.Book"/>
<jsp:setProperty property="*" name="Book"/>
<jsp:setProperty property="pubDate" name="Book" value="<%=strDate %>"/>

<table border="1">
	<tr style=background-color:navy;color:white;>
	<td>코드</td>
	<td>제목</td>
	<td>저자</td>
	<td>출판일자</td>
	</tr>
	<tr>
	<td><jsp:getProperty property="code" name="Book"/></td>
	<td><jsp:getProperty property="title" name="Book"/></td>
	<td><jsp:getProperty property="writer" name="Book"/></td>
	<td><jsp:getProperty property="pubDate" name="Book"/></td>
	</tr>
</table>
</body>
</html>