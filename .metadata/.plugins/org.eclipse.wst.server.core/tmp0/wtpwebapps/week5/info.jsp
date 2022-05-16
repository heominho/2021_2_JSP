<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table width="100%" border="1" cellpadding="0" cellspacing="0">
		<tr><td>모델번호</td><td>MQ7E2KH/A</td></tr>
		<tr><td>가격</td><td>22432원</td></tr>
		
	
	</table>
	
	<jsp:include page="infosub.jsp" flush="false">
		<jsp:param value="iphone" name="type"/>
	</jsp:include>
</body>
</html>