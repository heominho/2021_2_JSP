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
	String filename =  request.getParameter("filename");
%>
	<h3>파일 내용 보기</h3>
	이미지 파일명=<%=filename %><br><br>
	<img alt="<%=filename %>" src="fileSave/<%=filename %>"><p>
	<button onclick="location.href='uploadForm.jsp'">돌아가기</button>
</body>
</html>