<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
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
	String fileName = request.getParameter("filename");
	String path = "/fileSave/" + fileName;
	String real =application.getRealPath(path);
	BufferedReader br = new BufferedReader(new FileReader(real));
%>
<h3>파일 내용 보기</h3>
	파일명 = <%=fileName %><br>
	소스 패스 = <%=path %><br><br>
<%
	while(true){
		String str = br.readLine();
		if(str ==null)
			break;
		out.println(str+"<br>");
	}
	out.println("<br>");
	br.close();
%>
<button onclick="location.href='uploadForm.jsp'">돌아가기</button>
</body>
</html>